/* tslint:disable */
/* eslint-disable */
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
export class Tetris {
  free(): void;
  constructor(width: number, height: number);
  width(): number;
  height(): number;
  new_game(): void;
  get_score(): number;
  get_board(): any[];
  spawn_piece(): void;
  is_game_over(): boolean;
  move_down(): boolean;
  move_left(): boolean;
  move_right(): boolean;
  rotate(): boolean;
  hard_drop(): void;
  clear_lines(): number;
}

export type InitInput = RequestInfo | URL | Response | BufferSource | WebAssembly.Module;

export interface InitOutput {
  readonly memory: WebAssembly.Memory;
  readonly __wbg_tetris_free: (a: number, b: number) => void;
  readonly tetris_new: (a: number, b: number) => number;
  readonly tetris_width: (a: number) => number;
  readonly tetris_height: (a: number) => number;
  readonly tetris_new_game: (a: number) => void;
  readonly tetris_get_score: (a: number) => number;
  readonly tetris_get_board: (a: number) => [number, number];
  readonly tetris_spawn_piece: (a: number) => void;
  readonly tetris_is_game_over: (a: number) => number;
  readonly tetris_move_down: (a: number) => number;
  readonly tetris_move_left: (a: number) => number;
  readonly tetris_move_right: (a: number) => number;
  readonly tetris_rotate: (a: number) => number;
  readonly tetris_hard_drop: (a: number) => void;
  readonly tetris_clear_lines: (a: number) => number;
  readonly __wbindgen_export_0: WebAssembly.Table;
  readonly __externref_drop_slice: (a: number, b: number) => void;
  readonly __wbindgen_free: (a: number, b: number, c: number) => void;
  readonly __wbindgen_start: () => void;
}

export type SyncInitInput = BufferSource | WebAssembly.Module;
/**
* Instantiates the given `module`, which can either be bytes or
* a precompiled `WebAssembly.Module`.
*
* @param {{ module: SyncInitInput }} module - Passing `SyncInitInput` directly is deprecated.
*
* @returns {InitOutput}
*/
export function initSync(module: { module: SyncInitInput } | SyncInitInput): InitOutput;

/**
* If `module_or_path` is {RequestInfo} or {URL}, makes a request and
* for everything else, calls `WebAssembly.instantiate` directly.
*
* @param {{ module_or_path: InitInput | Promise<InitInput> }} module_or_path - Passing `InitInput` directly is deprecated.
*
* @returns {Promise<InitOutput>}
*/
export default function __wbg_init (module_or_path?: { module_or_path: InitInput | Promise<InitInput> } | InitInput | Promise<InitInput>): Promise<InitOutput>;
