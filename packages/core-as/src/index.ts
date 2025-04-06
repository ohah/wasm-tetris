// Tetromino enum
export enum Tetromino {
  I = 0,
  O = 1,
  T = 2,
  S = 3,
  Z = 4,
  J = 5,
  L = 6,
  Empty = 7,
}

// Tetris class
class Tetris {
  private width: i32;
  private height: i32;
  private board: Tetromino[][];
  private currentPiece: Tetromino[][];
  private currentX: i32;
  private currentY: i32;
  private gameOver: boolean;
  private score: u32;

  constructor(width: i32, height: i32) {
    this.width = width;
    this.height = height;
    this.board = [];
    this.currentPiece = [];
    this.currentX = 0;
    this.currentY = 0;
    this.gameOver = false;
    this.score = 0;
    this.board = this.createEmptyBoard();
  }

  private createEmptyBoard(): Tetromino[][] {
    const board: Tetromino[][] = [];
    for (let y = 0; y < this.height; y++) {
      const row: Tetromino[] = [];
      for (let x = 0; x < this.width; x++) {
        row.push(Tetromino.Empty);
      }
      board.push(row);
    }
    return board;
  }

  getWidth(): i32 {
    return this.width;
  }

  getHeight(): i32 {
    return this.height;
  }

  newGame(): void {
    this.board = this.createEmptyBoard();
    this.gameOver = false;
    this.score = 0;
    this.currentPiece = [];
    this.spawnPiece();
  }

  getScore(): u32 {
    return this.score;
  }

  getBoard(): Tetromino[] {
    const result: Tetromino[] = [];
    const board = this.createEmptyBoard();

    for (let y = 0; y < this.height; y++) {
      for (let x = 0; x < this.width; x++) {
        board[y][x] = this.board[y][x];
      }
    }

    if (this.currentPiece.length > 0) {
      for (let y = 0; y < this.currentPiece.length; y++) {
        for (let x = 0; x < this.currentPiece[y].length; x++) {
          if (this.currentPiece[y][x] !== Tetromino.Empty) {
            const boardY = this.currentY + y;
            const boardX = this.currentX + x;
            if (boardY < this.height && boardX < this.width) {
              board[boardY][boardX] = this.currentPiece[y][x];
            }
          }
        }
      }
    }

    for (let y = 0; y < this.height; y++) {
      for (let x = 0; x < this.width; x++) {
        result.push(board[y][x]);
      }
    }

    return result;
  }

  spawnPiece(): void {
    const pieces = [
      [[Tetromino.I, Tetromino.I, Tetromino.I, Tetromino.I]],
      [
        [Tetromino.O, Tetromino.O],
        [Tetromino.O, Tetromino.O],
      ],
      [
        [Tetromino.T, Tetromino.T, Tetromino.T],
        [Tetromino.Empty, Tetromino.T, Tetromino.Empty],
      ],
      [
        [Tetromino.Empty, Tetromino.S, Tetromino.S],
        [Tetromino.S, Tetromino.S, Tetromino.Empty],
      ],
      [
        [Tetromino.Z, Tetromino.Z, Tetromino.Empty],
        [Tetromino.Empty, Tetromino.Z, Tetromino.Z],
      ],
      [
        [Tetromino.J, Tetromino.Empty, Tetromino.Empty],
        [Tetromino.J, Tetromino.J, Tetromino.J],
      ],
      [
        [Tetromino.Empty, Tetromino.Empty, Tetromino.L],
        [Tetromino.L, Tetromino.L, Tetromino.L],
      ],
    ];

    const randomIndex = <i32>Math.floor(Math.random() * 7);
    this.currentPiece = pieces[randomIndex];
    this.currentX = <i32>(
      Math.floor((this.width - this.currentPiece[0].length) / 2)
    );
    this.currentY = 0;

    if (this.checkCollision()) {
      this.gameOver = true;
    }
  }

  isGameOver(): boolean {
    return this.gameOver;
  }

  moveDown(): boolean {
    this.currentY++;
    if (this.checkCollision()) {
      this.currentY--;
      this.lockPiece();
      this.clearLines();
      this.spawnPiece();
      return false;
    }
    return true;
  }

  moveLeft(): boolean {
    this.currentX--;
    if (this.checkCollision()) {
      this.currentX++;
      return false;
    }
    return true;
  }

  moveRight(): boolean {
    this.currentX++;
    if (this.checkCollision()) {
      this.currentX--;
      return false;
    }
    return true;
  }

  rotate(): boolean {
    const oldPiece = this.currentPiece;
    const rows = oldPiece.length;
    const cols = oldPiece[0].length;

    // Create new rotated piece
    const newPiece: Tetromino[][] = [];
    for (let i = 0; i < cols; i++) {
      const row: Tetromino[] = [];
      for (let j = rows - 1; j >= 0; j--) {
        row.push(oldPiece[j][i]);
      }
      newPiece.push(row);
    }

    this.currentPiece = newPiece;
    if (this.checkCollision()) {
      this.currentPiece = oldPiece;
      return false;
    }
    return true;
  }

  hardDrop(): void {
    while (this.moveDown()) {}
  }

  private checkCollision(): boolean {
    for (let y = 0; y < this.currentPiece.length; y++) {
      for (let x = 0; x < this.currentPiece[y].length; x++) {
        if (this.currentPiece[y][x] !== Tetromino.Empty) {
          const boardY = this.currentY + y;
          const boardX = this.currentX + x;

          if (
            boardY >= this.height ||
            boardX < 0 ||
            boardX >= this.width ||
            (boardY >= 0 && this.board[boardY][boardX] !== Tetromino.Empty)
          ) {
            return true;
          }
        }
      }
    }
    return false;
  }

  private lockPiece(): void {
    for (let y = 0; y < this.currentPiece.length; y++) {
      for (let x = 0; x < this.currentPiece[y].length; x++) {
        if (this.currentPiece[y][x] !== Tetromino.Empty) {
          const boardY = this.currentY + y;
          const boardX = this.currentX + x;
          if (boardY >= 0) {
            this.board[boardY][boardX] = this.currentPiece[y][x];
          }
        }
      }
    }
  }

  clearLines(): u32 {
    let linesCleared = 0;

    for (let y = this.height - 1; y >= 0; y--) {
      let isLineFull = true;
      for (let x = 0; x < this.width; x++) {
        if (this.board[y][x] === Tetromino.Empty) {
          isLineFull = false;
          break;
        }
      }

      if (isLineFull) {
        linesCleared++;

        for (let moveY = y; moveY > 0; moveY--) {
          for (let x = 0; x < this.width; x++) {
            this.board[moveY][x] = this.board[moveY - 1][x];
          }
        }

        for (let x = 0; x < this.width; x++) {
          this.board[0][x] = Tetromino.Empty;
        }
        y++;
      }
    }

    if (linesCleared > 0) {
      this.score += linesCleared * 100;
    }

    return linesCleared;
  }
}

let game: Tetris | null = null;

export function initGame(width: i32, height: i32): void {
  game = new Tetris(width, height);
}

export function getWidth(): i32 {
  return game!.getWidth();
}

export function getHeight(): i32 {
  return game!.getHeight();
}

export function newGame(): void {
  game!.newGame();
}

export function getScore(): u32 {
  return game!.getScore();
}

export function getBoard(): Tetromino[] {
  return game!.getBoard();
}

export function moveDown(): boolean {
  return game!.moveDown();
}

export function moveLeft(): boolean {
  return game!.moveLeft();
}

export function moveRight(): boolean {
  return game!.moveRight();
}

export function rotate(): boolean {
  return game!.rotate();
}

export function hardDrop(): void {
  game!.hardDrop();
}

export function isGameOver(): boolean {
  return game!.isGameOver();
}
