/** Exported memory */
export declare const memory: WebAssembly.Memory;
/** src/index/Tetromino */
export declare enum Tetromino {
  /** @type `i32` */
  I,
  /** @type `i32` */
  O,
  /** @type `i32` */
  T,
  /** @type `i32` */
  S,
  /** @type `i32` */
  Z,
  /** @type `i32` */
  J,
  /** @type `i32` */
  L,
  /** @type `i32` */
  Empty,
}
/**
 * src/index/initGame
 * @param width `i32`
 * @param height `i32`
 */
export declare function initGame(width: number, height: number): void;
/**
 * src/index/getWidth
 * @returns `i32`
 */
export declare function getWidth(): number;
/**
 * src/index/getHeight
 * @returns `i32`
 */
export declare function getHeight(): number;
/**
 * src/index/newGame
 */
export declare function newGame(): void;
/**
 * src/index/getScore
 * @returns `u32`
 */
export declare function getScore(): number;
/**
 * src/index/getBoard
 * @returns `~lib/array/Array<i32>`
 */
export declare function getBoard(): Array<number>;
/**
 * src/index/moveDown
 * @returns `bool`
 */
export declare function moveDown(): boolean;
/**
 * src/index/moveLeft
 * @returns `bool`
 */
export declare function moveLeft(): boolean;
/**
 * src/index/moveRight
 * @returns `bool`
 */
export declare function moveRight(): boolean;
/**
 * src/index/rotate
 * @returns `bool`
 */
export declare function rotate(): boolean;
/**
 * src/index/hardDrop
 */
export declare function hardDrop(): void;
/**
 * src/index/isGameOver
 * @returns `bool`
 */
export declare function isGameOver(): boolean;
