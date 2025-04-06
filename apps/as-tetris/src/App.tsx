import { useEffect, useRef, useState, useCallback } from 'react';
import reactLogo from './assets/react.svg';
import './App.css';
import {
  Tetromino,
  initGame,
  getWidth,
  getHeight,
  newGame,
  getScore,
  getBoard,
  moveDown,
  moveLeft,
  moveRight,
  rotate,
  hardDrop,
  isGameOver,
} from '@tetris/core-as';

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
  const [gameOver, setGameOver] = useState(false);
  const [score, setScore] = useState(0);
  const [gameState, setGameState] = useState<GameState>({
    isInitialized: false,
    isGameOver: false,
    error: null,
  });

  const drawBoard = useCallback(
    (ctx: CanvasRenderingContext2D, board: Tetromino[]) => {
      const width = getWidth();
      const height = getHeight();

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
        // Initialize the game with a 10x20 board
        initGame(10, 20);
        newGame();

        if (isMounted) {
          setGameState((prev) => ({ ...prev, isInitialized: true }));
          setScore(0);

          if (canvasRef.current) {
            const ctx = canvasRef.current.getContext('2d');
            if (ctx) {
              const render = (timestamp: number) => {
                if (!lastTime) lastTime = timestamp;
                const elapsed = timestamp - lastTime;

                if (elapsed > dropInterval && !gameState.isGameOver) {
                  moveDown();
                  // 매 프레임마다 현재 점수 확인
                  const currentScore = getScore();
                  setScore(currentScore);

                  if (isGameOver()) {
                    setGameState((prev) => ({ ...prev, isGameOver: true }));
                  }
                  lastTime = timestamp;
                }

                const board = getBoard();
                drawBoard(ctx, board);
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
      if (gameOver) return;

      switch (e.key) {
        case 'ArrowLeft':
          moveLeft();
          break;
        case 'ArrowRight':
          moveRight();
          break;
        case 'ArrowDown':
          moveDown();
          break;
        case 'ArrowUp':
          rotate();
          break;
        case ' ': {
          hardDrop();
          const points = getScore();
          if (points > 0) {
            setScore(points);
          }
          if (isGameOver()) {
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
    newGame();
    setGameOver(false);
    setScore(0); // 점수 초기화
  }, []);

  return (
    <div
      style={{
        backgroundColor: '#ffffff',
        color: '#000000',
      }}
    >
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
