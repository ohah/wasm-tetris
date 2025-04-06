async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
      seed() {
        // ~lib/builtins/seed() => f64
        return (() => {
          // @external.js
          return Date.now() * Math.random();
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    Tetromino: (values => (
      // src/index/Tetromino
      values[values.I = exports["Tetromino.I"].valueOf()] = "I",
      values[values.O = exports["Tetromino.O"].valueOf()] = "O",
      values[values.T = exports["Tetromino.T"].valueOf()] = "T",
      values[values.S = exports["Tetromino.S"].valueOf()] = "S",
      values[values.Z = exports["Tetromino.Z"].valueOf()] = "Z",
      values[values.J = exports["Tetromino.J"].valueOf()] = "J",
      values[values.L = exports["Tetromino.L"].valueOf()] = "L",
      values[values.Empty = exports["Tetromino.Empty"].valueOf()] = "Empty",
      values
    ))({}),
    getScore() {
      // src/index/getScore() => u32
      return exports.getScore() >>> 0;
    },
    getBoard() {
      // src/index/getBoard() => ~lib/array/Array<i32>
      return __liftArray(__getI32, 2, exports.getBoard() >>> 0);
    },
    moveDown() {
      // src/index/moveDown() => bool
      return exports.moveDown() != 0;
    },
    moveLeft() {
      // src/index/moveLeft() => bool
      return exports.moveLeft() != 0;
    },
    moveRight() {
      // src/index/moveRight() => bool
      return exports.moveRight() != 0;
    },
    rotate() {
      // src/index/rotate() => bool
      return exports.rotate() != 0;
    },
    isGameOver() {
      // src/index/isGameOver() => bool
      return exports.isGameOver() != 0;
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  let __dataview = new DataView(memory.buffer);
  function __getI32(pointer) {
    try {
      return __dataview.getInt32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt32(pointer, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}
export const {
  memory,
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
} = await (async url => instantiate(
  await (async () => {
    const isNodeOrBun = typeof process != "undefined" && process.versions != null && (process.versions.node != null || process.versions.bun != null);
    if (isNodeOrBun) { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
    else { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
  })(), {
  }
))(new URL("release.wasm", import.meta.url));
