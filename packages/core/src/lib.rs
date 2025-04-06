use rand::{rngs::SmallRng, FromEntropy, Rng};
use wasm_bindgen::prelude::*;

#[wasm_bindgen]
#[derive(Clone, Copy, PartialEq)]
pub enum Tetromino {
    I,
    O,
    T,
    S,
    Z,
    J,
    L,
    Empty,
}

#[wasm_bindgen]
pub struct Tetris {
    width: usize,
    height: usize,
    board: Vec<Vec<Tetromino>>,
    current_piece: Vec<Vec<Tetromino>>,
    current_x: i32,
    current_y: i32,
    game_over: bool,
    score: u32,
}

#[wasm_bindgen]
impl Tetris {
    #[wasm_bindgen(constructor)]
    pub fn new(width: usize, height: usize) -> Tetris {
        let board = vec![vec![Tetromino::Empty; width]; height];
        Tetris {
            width,
            height,
            board,
            current_piece: Vec::new(),
            current_x: 0,
            current_y: 0,
            game_over: false,
            score: 0,
        }
    }

    pub fn width(&self) -> usize {
        self.width
    }

    pub fn height(&self) -> usize {
        self.height
    }

    pub fn new_game(&mut self) {
        self.board = vec![vec![Tetromino::Empty; self.width]; self.height];
        self.game_over = false;
        self.score = 0;
        self.current_piece = Vec::new();
        self.spawn_piece();
    }

    pub fn get_score(&self) -> u32 {
        self.score
    }

    pub fn get_board(&self) -> Vec<Tetromino> {
        let mut board = self.board.clone();

        if !self.current_piece.is_empty() {
            for y in 0..self.current_piece.len() {
                for x in 0..self.current_piece[y].len() {
                    if self.current_piece[y][x] != Tetromino::Empty {
                        let board_y = self.current_y as usize + y;
                        let board_x = self.current_x as usize + x;
                        if board_y < self.height && board_x < self.width {
                            board[board_y][board_x] = self.current_piece[y][x];
                        }
                    }
                }
            }
        }

        board.iter().flatten().cloned().collect()
    }

    pub fn spawn_piece(&mut self) {
        let pieces = [
            vec![vec![Tetromino::I, Tetromino::I, Tetromino::I, Tetromino::I]],
            vec![
                vec![Tetromino::O, Tetromino::O],
                vec![Tetromino::O, Tetromino::O],
            ],
            vec![
                vec![Tetromino::T, Tetromino::T, Tetromino::T],
                vec![Tetromino::Empty, Tetromino::T, Tetromino::Empty],
            ],
            vec![
                vec![Tetromino::Empty, Tetromino::S, Tetromino::S],
                vec![Tetromino::S, Tetromino::S, Tetromino::Empty],
            ],
            vec![
                vec![Tetromino::Z, Tetromino::Z, Tetromino::Empty],
                vec![Tetromino::Empty, Tetromino::Z, Tetromino::Z],
            ],
            vec![
                vec![Tetromino::J, Tetromino::Empty, Tetromino::Empty],
                vec![Tetromino::J, Tetromino::J, Tetromino::J],
            ],
            vec![
                vec![Tetromino::Empty, Tetromino::Empty, Tetromino::L],
                vec![Tetromino::L, Tetromino::L, Tetromino::L],
            ],
        ];

        let mut rng = SmallRng::from_entropy();
        let piece_index = rng.gen_range(0, pieces.len());
        self.current_piece = pieces[piece_index].clone();
        self.current_x = (self.width / 2 - self.current_piece[0].len() / 2) as i32;
        self.current_y = 0;
    }

    pub fn is_game_over(&self) -> bool {
        self.game_over
    }

    pub fn move_down(&mut self) -> bool {
        if self.game_over {
            return false;
        }

        self.current_y += 1;

        if self.check_collision() {
            self.current_y -= 1;
            self.lock_piece();
            self.score += self.clear_lines();
            self.spawn_piece();

            if self.check_collision() {
                self.game_over = true;
            }
            return false;
        }

        true
    }

    pub fn move_left(&mut self) -> bool {
        if self.game_over {
            return false;
        }

        self.current_x -= 1;
        if self.check_collision() {
            self.current_x += 1;
            false
        } else {
            true
        }
    }

    pub fn move_right(&mut self) -> bool {
        if self.game_over {
            return false;
        }

        self.current_x += 1;
        if self.check_collision() {
            self.current_x -= 1;
            false
        } else {
            true
        }
    }

    pub fn rotate(&mut self) -> bool {
        let old_piece = self.current_piece.clone();
        let rows = self.current_piece.len();
        let cols = self.current_piece[0].len();

        let mut new_piece = vec![vec![Tetromino::Empty; rows]; cols];
        for i in 0..rows {
            for j in 0..cols {
                new_piece[j][rows - 1 - i] = self.current_piece[i][j];
            }
        }

        self.current_piece = new_piece;
        if self.check_collision() {
            self.current_piece = old_piece;
            false
        } else {
            true
        }
    }

    pub fn hard_drop(&mut self) {
        while self.move_down() {}
    }

    fn check_collision(&self) -> bool {
        for y in 0..self.current_piece.len() {
            for x in 0..self.current_piece[y].len() {
                if self.current_piece[y][x] != Tetromino::Empty {
                    let board_y = self.current_y as usize + y;
                    let board_x = self.current_x as usize + x;

                    if board_y >= self.height
                        || board_x >= self.width
                        || (board_y < self.height
                            && board_x < self.width
                            && self.board[board_y][board_x] != Tetromino::Empty)
                    {
                        return true;
                    }
                }
            }
        }
        false
    }

    fn lock_piece(&mut self) {
        for y in 0..self.current_piece.len() {
            for x in 0..self.current_piece[y].len() {
                if self.current_piece[y][x] != Tetromino::Empty {
                    let board_y = self.current_y as usize + y;
                    let board_x = self.current_x as usize + x;
                    if board_y < self.height && board_x < self.width {
                        self.board[board_y][board_x] = self.current_piece[y][x];
                    }
                }
            }
        }
    }

    pub fn clear_lines(&mut self) -> u32 {
        let mut lines_cleared = 0;
        let mut y = 0;

        while y < self.height {
            let is_full = self.board[y].iter().all(|&cell| cell != Tetromino::Empty);
            if is_full {
                // Remove the full line
                self.board.remove(y);
                // Add a new empty line at the top
                self.board.insert(0, vec![Tetromino::Empty; self.width]);
                lines_cleared += 1;
            } else {
                y += 1;
            }
        }

        // 점수 계산: 1줄=100, 2줄=300, 3줄=500, 4줄=800
        match lines_cleared {
            1 => 100,
            2 => 300,
            3 => 500,
            4 => 800,
            _ => 0,
        }
    }
}
