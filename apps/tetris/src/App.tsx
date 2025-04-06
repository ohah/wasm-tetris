import { useEffect, useRef, useState, useCallback } from 'react';
import reactLogo from './assets/react.svg';
import init, { Tetris, Tetromino } from '@tetris/core';
import './App.css';

const BLOCK_SIZE = 30;

interface GameState {
  isInitialized: boolean;
  isGameOver: boolean;
  error: string | null;
}

const COLORS: Record<Tetromino, string> = {
  [Tetromino.I]: '#00E5FF', // 시안 (I 미노)
  [Tetromino.O]: '#FFD700', // 골드 (O 미노)
  [Tetromino.T]: '#B847FF', // 보라 (T 미노)
  [Tetromino.S]: '#72CB3B', // 라임 그린 (S 미노)
  [Tetromino.Z]: '#FF1744', // 빨강 (Z 미노)
  [Tetromino.J]: '#0065FF', // 파랑 (J 미노)
  [Tetromino.L]: '#FF7800', // 주황 (L 미노)
  [Tetromino.Empty]: '#e8e8e8', // 빈 칸
};

function App() {
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const tetrisRef = useRef<Tetris | null>(null);
  const [gameOver, setGameOver] = useState(false);
  const [score, setScore] = useState(0);
  const [gameState, setGameState] = useState<GameState>({
    isInitialized: false,
    isGameOver: false,
    error: null,
  });

  const drawBoard = useCallback(
    (ctx: CanvasRenderingContext2D, board: Tetromino[]) => {
      const width = tetrisRef.current?.width() || 0;
      const height = tetrisRef.current?.height() || 0;

      ctx.fillStyle = '#f0f0f0';
      ctx.fillRect(0, 0, width * BLOCK_SIZE, height * BLOCK_SIZE);

      board.forEach((tetromino, index) => {
        const x = (index % width) * BLOCK_SIZE;
        const y = Math.floor(index / width) * BLOCK_SIZE;

        // 블록 그리기
        ctx.fillStyle = COLORS[tetromino];
        ctx.fillRect(x, y, BLOCK_SIZE, BLOCK_SIZE);

        // 경계선 그리기
        if (tetromino === Tetromino.Empty) {
          ctx.strokeStyle = '#cccccc';
        } else {
          ctx.strokeStyle = 'rgba(0, 0, 0, 0.1)';
        }
        ctx.lineWidth = 0.5;
        ctx.strokeRect(x, y, BLOCK_SIZE, BLOCK_SIZE);
      });
    },
    []
  );

  useEffect(() => {
    let isMounted = true;
    let animationFrameId: number;
    let lastTime = 0;
    const dropInterval = 1000;

    async function initWasm() {
      try {
        await init();

        if (isMounted) {
          setGameState((prev) => ({ ...prev, isInitialized: true }));

          if (canvasRef.current) {
            const tetris = new Tetris(10, 20);
            tetrisRef.current = tetris;
            tetris.new_game();
            setScore(0);

            const ctx = canvasRef.current.getContext('2d');
            if (ctx) {
              const render = (timestamp: number) => {
                console.log('lastTime', lastTime);
                if (!lastTime) lastTime = timestamp;
                const elapsed = timestamp - lastTime;

                if (elapsed > dropInterval && !gameState.isGameOver) {
                  const tetris = tetrisRef.current;
                  if (tetris) {
                    tetris.move_down();
                    // 매 프레임마다 현재 점수 확인
                    const currentScore = tetris.get_score();
                    setScore(currentScore);

                    if (tetris.is_game_over()) {
                      setGameState((prev) => ({ ...prev, isGameOver: true }));
                    }
                    lastTime = timestamp;
                  }
                }

                const board = tetrisRef.current?.get_board();
                if (board) {
                  drawBoard(ctx, board);
                }
                animationFrameId = requestAnimationFrame(render);
              };
              render(0);
            }
          }
        }
      } catch (error) {
        if (isMounted) {
          setGameState((prev) => ({
            ...prev,
            error: error instanceof Error ? error.message : String(error),
          }));
        }
      }
    }

    initWasm();

    return () => {
      isMounted = false;
      if (animationFrameId) {
        cancelAnimationFrame(animationFrameId);
      }
    };
  }, [gameState.isGameOver, drawBoard]);

  const handleKeyDown = useCallback(
    (e: KeyboardEvent) => {
      if (!tetrisRef.current || gameOver) return;

      switch (e.key) {
        case 'ArrowLeft':
          tetrisRef.current.move_left();
          break;
        case 'ArrowRight':
          tetrisRef.current.move_right();
          break;
        case 'ArrowDown':
          tetrisRef.current.move_down();
          break;
        case 'ArrowUp':
          tetrisRef.current.rotate();
          break;
        case ' ': {
          tetrisRef.current.hard_drop();
          const points = tetrisRef.current.get_score();
          if (points > 0) {
            setScore(points);
          }
          if (tetrisRef.current.is_game_over()) {
            setGameState((prev) => ({ ...prev, isGameOver: true }));
          }
          break;
        }
      }
    },
    [gameOver]
  );

  useEffect(() => {
    window.addEventListener('keydown', handleKeyDown);
    return () => {
      window.removeEventListener('keydown', handleKeyDown);
    };
  }, [handleKeyDown]);

  const handleRestart = useCallback(() => {
    if (tetrisRef.current) {
      tetrisRef.current.new_game();
      setGameOver(false);
      setScore(0); // 점수 초기화
    }
  }, []);

  return (
    <div style={{ backgroundColor: '#ffffff', color: '#000000' }}>
      <h1>Wasm Tetris</h1>
      <button type="button" onClick={handleRestart}>
        게임 재시작
      </button>
      <p>
        WebAssembly 초기화 상태:{' '}
        {gameState.isInitialized ? '완료' : '진행 중...'}
      </p>
      {gameState.error && (
        <p style={{ color: 'red' }}>오류: {gameState.error}</p>
      )}
      {gameState.isGameOver && <p style={{ color: 'red' }}>게임 오버!</p>}
      <p>점수: {score}</p>
      <canvas
        ref={canvasRef}
        width={10 * BLOCK_SIZE}
        height={20 * BLOCK_SIZE}
        style={{
          border: '1px solid #cccccc',
          backgroundColor: '#f0f0f0',
        }}
      />
    </div>
  );
}

export default App;
