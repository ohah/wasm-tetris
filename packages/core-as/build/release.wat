(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func))
 (type $4 (func (param i32) (result i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i64)))
 (type $9 (func (result f64)))
 (type $10 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $src/index/Tetromino.I i32 (i32.const 0))
 (global $src/index/Tetromino.O i32 (i32.const 1))
 (global $src/index/Tetromino.T i32 (i32.const 2))
 (global $src/index/Tetromino.S i32 (i32.const 3))
 (global $src/index/Tetromino.Z i32 (i32.const 4))
 (global $src/index/Tetromino.J i32 (i32.const 5))
 (global $src/index/Tetromino.L i32 (i32.const 6))
 (global $src/index/Tetromino.Empty i32 (i32.const 7))
 (global $src/index/game (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35332))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\01")
 (data $1 (i32.const 1068) "<")
 (data $1.1 (i32.const 1080) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $5 (i32.const 1260) "<")
 (data $5.1 (i32.const 1272) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $6 (i32.const 1324) ",")
 (data $6.1 (i32.const 1336) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $8 (i32.const 1404) "<")
 (data $8.1 (i32.const 1416) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\01")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\01")
 (data $11 (i32.const 1532) "\1c")
 (data $11.1 (i32.const 1544) "\01")
 (data $12 (i32.const 1564) ",")
 (data $12.1 (i32.const 1576) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $13 (i32.const 1612) ",")
 (data $13.1 (i32.const 1624) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $14 (i32.const 1660) "|")
 (data $14.1 (i32.const 1672) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $15 (i32.const 1788) ",")
 (data $15.1 (i32.const 1800) "\02\00\00\00\18\00\00\00s\00r\00c\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data $16 (i32.const 1836) "\1c")
 (data $16.1 (i32.const 1848) "\01")
 (data $17 (i32.const 1868) ",")
 (data $17.1 (i32.const 1880) "\01\00\00\00\10")
 (data $18 (i32.const 1916) "\1c")
 (data $18.1 (i32.const 1928) "\01\00\00\00\08\00\00\00\01\00\00\00\01")
 (data $19 (i32.const 1948) "\1c")
 (data $19.1 (i32.const 1960) "\01\00\00\00\08\00\00\00\01\00\00\00\01")
 (data $20 (i32.const 1980) "\1c")
 (data $20.1 (i32.const 1992) "\01\00\00\00\0c\00\00\00\02\00\00\00\02\00\00\00\02")
 (data $21 (i32.const 2012) "\1c")
 (data $21.1 (i32.const 2024) "\01\00\00\00\0c\00\00\00\07\00\00\00\02\00\00\00\07")
 (data $22 (i32.const 2044) "\1c")
 (data $22.1 (i32.const 2056) "\01\00\00\00\0c\00\00\00\07\00\00\00\03\00\00\00\03")
 (data $23 (i32.const 2076) "\1c")
 (data $23.1 (i32.const 2088) "\01\00\00\00\0c\00\00\00\03\00\00\00\03\00\00\00\07")
 (data $24 (i32.const 2108) "\1c")
 (data $24.1 (i32.const 2120) "\01\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\07")
 (data $25 (i32.const 2140) "\1c")
 (data $25.1 (i32.const 2152) "\01\00\00\00\0c\00\00\00\07\00\00\00\04\00\00\00\04")
 (data $26 (i32.const 2172) "\1c")
 (data $26.1 (i32.const 2184) "\01\00\00\00\0c\00\00\00\05\00\00\00\07\00\00\00\07")
 (data $27 (i32.const 2204) "\1c")
 (data $27.1 (i32.const 2216) "\01\00\00\00\0c\00\00\00\05\00\00\00\05\00\00\00\05")
 (data $28 (i32.const 2236) "\1c")
 (data $28.1 (i32.const 2248) "\01\00\00\00\0c\00\00\00\07\00\00\00\07\00\00\00\06")
 (data $29 (i32.const 2268) "\1c")
 (data $29.1 (i32.const 2280) "\01\00\00\00\0c\00\00\00\06\00\00\00\06\00\00\00\06")
 (data $30 (i32.const 2300) "|")
 (data $30.1 (i32.const 2312) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $31 (i32.const 2428) "\1c")
 (data $31.1 (i32.const 2440) "\01")
 (data $32 (i32.const 2460) "\1c")
 (data $32.1 (i32.const 2472) "\01")
 (data $33 (i32.const 2492) "\1c")
 (data $33.1 (i32.const 2504) "\01")
 (data $34 (i32.const 2528) "\08\00\00\00 \00\00\00 \00\00\00 ")
 (data $34.1 (i32.const 2552) "\02\t\00\00\02A\00\00\02A")
 (export "Tetromino.I" (global $src/index/Tetromino.I))
 (export "Tetromino.O" (global $src/index/Tetromino.O))
 (export "Tetromino.T" (global $src/index/Tetromino.T))
 (export "Tetromino.S" (global $src/index/Tetromino.S))
 (export "Tetromino.Z" (global $src/index/Tetromino.Z))
 (export "Tetromino.J" (global $src/index/Tetromino.J))
 (export "Tetromino.L" (global $src/index/Tetromino.L))
 (export "Tetromino.Empty" (global $src/index/Tetromino.Empty))
 (export "initGame" (func $src/index/initGame))
 (export "getWidth" (func $src/index/getWidth))
 (export "getHeight" (func $src/index/getHeight))
 (export "newGame" (func $src/index/newGame))
 (export "getScore" (func $src/index/getScore))
 (export "getBoard" (func $src/index/getBoard))
 (export "moveDown" (func $src/index/moveDown))
 (export "moveLeft" (func $src/index/moveLeft))
 (export "moveRight" (func $src/index/moveRight))
 (export "rotate" (func $src/index/rotate))
 (export "hardDrop" (func $src/index/hardDrop))
 (export "isGameOver" (func $src/index/isGameOver))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $src/index/game
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1280
  call $~lib/rt/itcms/__visit
  i32.const 1584
  call $~lib/rt/itcms/__visit
  i32.const 2320
  call $~lib/rt/itcms/__visit
  i32.const 1088
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$282
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 35332
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1152
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$282
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 2528
   i32.load
   i32.gt_u
   if
    i32.const 1280
    i32.const 1344
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 2532
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1424
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 35344
  i32.const 0
  i32.store
  i32.const 36912
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 35344
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 35344
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 35344
  i32.const 36916
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 35344
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 35332
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 35332
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 35332
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1424
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1424
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1088
   i32.const 1424
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1424
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1152
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $src/index/initGame (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8 offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  i32.const 0
  i32.const 6
  i32.const 1056
  call $~lib/rt/__newArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  i32.const 0
  i32.const 6
  i32.const 1488
  call $~lib/rt/__newArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8 offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $src/index/Tetris#createEmptyBoard
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  global.set $src/index/game
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $invalid
   block $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>
    block $~lib/array/Array<~lib/array/Array<i32>>
     block $~lib/array/Array<i32>
      block $src/index/Tetris
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          block $~lib/object/Object
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $src/index/Tetris $~lib/array/Array<i32> $~lib/array/Array<~lib/array/Array<i32>> $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>> $invalid
          end
          return
         end
         return
        end
        return
       end
       local.get $0
       i32.load
       local.tee $0
       if
        local.get $0
        call $~lib/rt/itcms/__visit
       end
       return
      end
      local.get $0
      i32.load offset=8
      local.tee $1
      if
       local.get $1
       call $~lib/rt/itcms/__visit
      end
      local.get $0
      i32.load offset=12
      local.tee $0
      if
       local.get $0
       call $~lib/rt/itcms/__visit
      end
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2564
     i32.lt_s
     if
      i32.const 35360
      i32.const 35408
      i32.const 1
      i32.const 1
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load
     call $~lib/rt/itcms/__visit
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>~visit
    return
   end
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>~visit
   return
  end
  unreachable
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 35332
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1204
  i32.const 1200
  i32.store
  i32.const 1208
  i32.const 1200
  i32.store
  i32.const 1200
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1236
  i32.const 1232
  i32.store
  i32.const 1240
  i32.const 1232
  i32.store
  i32.const 1232
  global.set $~lib/rt/itcms/toSpace
  i32.const 1380
  i32.const 1376
  i32.store
  i32.const 1384
  i32.const 1376
  i32.store
  i32.const 1376
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1584
    i32.const 1632
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/rt/itcms/__renew$272
    i32.const 1073741820
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    i32.const 8
    local.get $1
    local.get $1
    i32.const 8
    i32.le_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $3
    local.get $0
    i32.load
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew$272
    end
    local.get $3
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    memory.copy
   end
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/Tetris#createEmptyBoard (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 6
  i32.const 1520
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load offset=4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 5
    i32.const 1552
    call $~lib/rt/__newArray
    local.tee $1
    i32.store offset=8
    i32.const 0
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.load
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      i32.const 7
      call $~lib/array/Array<i32>#push
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=12
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#push
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/index/getWidth (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 287
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/getHeight (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 291
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1632
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1280
   i32.const 1632
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 2320
   i32.const 1632
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1280
   i32.const 1632
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/index/Tetris#checkCollision (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<i32>#get:length
   local.get $1
   i32.gt_s
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=12
     local.tee $3
     i32.store offset=4
     local.get $3
     local.get $1
     call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     call $~lib/array/Array<i32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=12
      local.tee $3
      i32.store offset=4
      local.get $3
      local.get $1
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      local.get $2
      call $~lib/array/Array<i32>#__get
      i32.const 7
      i32.ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $1
       local.get $0
       i32.load offset=20
       i32.add
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $2
       local.get $0
       i32.load offset=16
       i32.add
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $4
       i32.const 0
       i32.lt_s
       local.get $3
       local.get $0
       i32.load offset=4
       i32.ge_s
       i32.or
       if (result i32)
        i32.const 1
       else
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $4
        local.get $0
        i32.load
        i32.ge_s
       end
       if (result i32)
        i32.const 1
       else
        local.get $3
        i32.const 0
        i32.ge_s
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=8
         local.tee $5
         i32.store offset=4
         local.get $5
         local.get $3
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store
         local.get $3
         local.get $4
         call $~lib/array/Array<i32>#__get
         i32.const 7
         i32.ne
        else
         i32.const 0
        end
       end
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        return
       end
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/index/Tetris#spawnPiece (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 84
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 7
  i32.const 7
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=12
  local.get $4
  i32.const 0
  i32.const 4
  i32.const 5
  i32.const 1888
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 0
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=20
  local.get $4
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 1936
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 2
  i32.const 5
  i32.const 1968
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 1
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=28
  local.get $4
  i32.const 0
  i32.const 3
  i32.const 5
  i32.const 2000
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 2032
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 2
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=36
  local.get $4
  i32.const 0
  i32.const 3
  i32.const 5
  i32.const 2064
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 2096
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 3
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=44
  local.get $4
  i32.const 0
  i32.const 3
  i32.const 5
  i32.const 2128
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 2160
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 4
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=52
  local.get $4
  i32.const 0
  i32.const 3
  i32.const 5
  i32.const 2192
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 2224
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 5
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  i32.store offset=60
  local.get $4
  i32.const 0
  i32.const 3
  i32.const 5
  i32.const 2256
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $4
  i32.const 1
  i32.const 3
  i32.const 5
  i32.const 2288
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $3
  i32.const 6
  local.get $4
  call $~lib/array/Array<~lib/array/Array<i32>>#__set
  local.get $2
  local.get $3
  i32.store offset=64
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $1
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $5
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $1
  local.get $5
  local.get $5
  i64.const 23
  i64.shl
  i64.xor
  local.tee $5
  i64.const 17
  i64.shr_u
  local.get $5
  i64.xor
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=76
  local.get $3
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
  f64.const 7
  f64.mul
  f64.floor
  i32.trunc_sat_f64_s
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=72
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=72
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=80
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.store offset=76
  local.get $3
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=72
  local.get $0
  local.get $2
  local.get $3
  call $~lib/array/Array<i32>#get:length
  i32.sub
  i32.const 2
  i32.div_s
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  local.get $0
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  local.get $0
  call $src/index/Tetris#checkCollision
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=68
   local.get $0
   i32.const 1
   i32.store8 offset=24
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/newGame
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 295
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $src/index/Tetris#createEmptyBoard
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   i32.store8 offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 6
   i32.const 1856
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=12
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $src/index/Tetris#spawnPiece
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/getScore (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 299
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=28
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1632
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/Tetris#getBoard (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 2448
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/index/Tetris#createEmptyBoard
  local.tee $3
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load offset=4
   i32.lt_s
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.load
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      local.get $3
      local.get $1
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $6
      i32.store offset=16
      local.get $6
      local.get $1
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $5
      local.get $2
      local.get $6
      local.get $2
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<i32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.store offset=4
  local.get $1
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.set $1
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $2
    i32.store offset=4
    local.get $2
    call $~lib/array/Array<i32>#get:length
    local.get $1
    i32.gt_s
    if
     i32.const 0
     local.set $2
     loop $for-loop|3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=12
      local.tee $5
      i32.store offset=12
      local.get $5
      local.get $1
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      call $~lib/array/Array<i32>#get:length
      local.get $2
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=16
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=12
       local.tee $5
       i32.store offset=12
       local.get $5
       local.get $1
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=4
       local.get $5
       local.get $2
       call $~lib/array/Array<i32>#__get
       i32.const 7
       i32.ne
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $1
        local.get $0
        i32.load offset=20
        i32.add
        local.set $5
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $2
        local.get $0
        i32.load offset=16
        i32.add
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $5
        local.get $0
        i32.load offset=4
        i32.lt_s
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=4
         local.get $6
         local.get $0
         i32.load
         i32.lt_s
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store offset=12
         local.get $3
         local.get $5
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
         local.set $5
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=12
         local.tee $7
         i32.store offset=16
         local.get $7
         local.get $1
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
         local.set $7
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=12
         local.get $5
         local.get $6
         local.get $7
         local.get $2
         call $~lib/array/Array<i32>#__get
         call $~lib/array/Array<i32>#__set
        end
       end
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|3
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load offset=4
   i32.lt_s
   if
    i32.const 0
    local.set $2
    loop $for-loop|5
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.load
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=16
      local.get $3
      local.get $1
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=12
      local.get $4
      local.get $5
      local.get $2
      call $~lib/array/Array<i32>#__get
      call $~lib/array/Array<i32>#push
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|5
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/index/getBoard (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $src/index/game
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1680
   i32.const 1808
   i32.const 303
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/Tetris#getBoard
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/index/Tetris#clearLines (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 1
    local.set $2
    i32.const 0
    local.set $6
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $6
     local.get $0
     i32.load
     i32.lt_s
     if
      block $for-break1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=8
       local.tee $3
       i32.store offset=4
       local.get $3
       local.get $1
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       local.get $6
       call $~lib/array/Array<i32>#__get
       i32.const 7
       i32.eq
       if
        i32.const 0
        local.set $2
        br $for-break1
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|1
      end
     end
    end
    local.get $2
    if (result i32)
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $1
     local.set $2
     loop $for-loop|2
      local.get $2
      i32.const 0
      i32.gt_s
      if
       i32.const 0
       local.set $6
       loop $for-loop|3
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $6
        local.get $0
        i32.load
        i32.lt_s
        if
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=8
         local.tee $3
         i32.store offset=4
         local.get $3
         local.get $2
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
         local.set $4
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=12
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=8
         local.tee $3
         i32.store offset=8
         local.get $3
         local.get $2
         i32.const 1
         i32.sub
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store offset=4
         local.get $4
         local.get $6
         local.get $3
         local.get $6
         call $~lib/array/Array<i32>#__get
         call $~lib/array/Array<i32>#__set
         local.get $6
         i32.const 1
         i32.add
         local.set $6
         br $for-loop|3
        end
       end
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       br $for-loop|2
      end
     end
     i32.const 0
     local.set $2
     loop $for-loop|4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $2
      local.get $0
      i32.load
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=8
       local.tee $3
       i32.store offset=4
       local.get $3
       i32.const 0
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       local.get $2
       i32.const 7
       call $~lib/array/Array<i32>#__set
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|4
      end
     end
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $1
    end
    i32.const 1
    i32.sub
    local.set $1
    br $for-loop|0
   end
  end
  local.get $5
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=28
   local.get $5
   i32.const 100
   i32.mul
   i32.add
   i32.store offset=28
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/Tetris#moveDown (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $src/index/Tetris#checkCollision
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.sub
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2564
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store offset=8
    loop $for-loop|0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=12
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<i32>#get:length
     local.get $2
     i32.gt_s
     if
      i32.const 0
      local.set $1
      loop $for-loop|1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=12
       local.tee $3
       i32.store offset=4
       local.get $3
       local.get $2
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       call $~lib/array/Array<i32>#get:length
       local.get $1
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=12
        local.tee $3
        i32.store offset=4
        local.get $3
        local.get $2
        call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        local.get $3
        local.get $1
        call $~lib/array/Array<i32>#__get
        i32.const 7
        i32.ne
        if
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $2
         local.get $0
         i32.load offset=20
         i32.add
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $1
         local.get $0
         i32.load offset=16
         i32.add
         local.set $4
         local.get $3
         i32.const 0
         i32.ge_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.load offset=8
          local.tee $5
          i32.store offset=4
          local.get $5
          local.get $3
          call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store offset=12
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.load offset=12
          local.tee $5
          i32.store offset=8
          local.get $5
          local.get $2
          call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store offset=4
          local.get $3
          local.get $4
          local.get $5
          local.get $1
          call $~lib/array/Array<i32>#__get
          call $~lib/array/Array<i32>#__set
         end
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|1
       end
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/index/Tetris#clearLines
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/index/Tetris#spawnPiece
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/moveDown (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $src/index/game
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1680
   i32.const 1808
   i32.const 307
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/Tetris#moveDown
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/index/moveLeft (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $__inlined_func$src/index/Tetris#moveLeft$278 (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $src/index/game
    local.tee $0
    i32.store offset=4
    local.get $0
    i32.eqz
    if
     i32.const 1680
     i32.const 1808
     i32.const 311
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2564
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    i32.const 1
    i32.sub
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/index/Tetris#checkCollision
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $0
     i32.load offset=16
     i32.const 1
     i32.add
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$src/index/Tetris#moveLeft$278
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/moveRight (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $__inlined_func$src/index/Tetris#moveRight$279 (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $src/index/game
    local.tee $0
    i32.store offset=4
    local.get $0
    i32.eqz
    if
     i32.const 1680
     i32.const 1808
     i32.const 315
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2564
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    i32.const 1
    i32.add
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/index/Tetris#checkCollision
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $0
     i32.load offset=16
     i32.const 1
     i32.sub
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$src/index/Tetris#moveRight$279
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/rotate (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $5
   i32.store offset=4
   local.get $5
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 319
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   block $__inlined_func$src/index/Tetris#rotate$2 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2564
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 24
    memory.fill
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=12
    local.tee $7
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    call $~lib/array/Array<i32>#get:length
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $7
    i32.const 0
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/array/Array<i32>#get:length
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 6
    i32.const 2480
    call $~lib/rt/__newArray
    local.tee $6
    i32.store offset=12
    loop $for-loop|0
     local.get $0
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 5
      i32.const 2512
      call $~lib/rt/__newArray
      local.tee $8
      i32.store offset=16
      local.get $3
      i32.const 1
      i32.sub
      local.set $1
      loop $for-loop|1
       local.get $1
       i32.const 0
       i32.ge_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store offset=20
        local.get $7
        local.get $1
        call $~lib/array/Array<~lib/array/Array<~lib/array/Array<i32>>>#__get
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $8
        local.get $2
        local.get $0
        call $~lib/array/Array<i32>#__get
        call $~lib/array/Array<i32>#push
        local.get $1
        i32.const 1
        i32.sub
        local.set $1
        br $for-loop|1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $6
      local.get $8
      call $~lib/array/Array<~lib/array/Array<i32>>#push
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    i32.store offset=12
    local.get $5
    local.get $6
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $src/index/Tetris#checkCollision
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $5
     local.get $7
     i32.store offset=12
     local.get $5
     local.get $7
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$src/index/Tetris#rotate$2
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/hardDrop
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 323
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $src/index/Tetris#moveDown
    br_if $while-continue|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/isGameOver (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $src/index/game
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 1680
    i32.const 1808
    i32.const 327
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2564
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load8_u offset=24
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 0
   i32.ne
   return
  end
  i32.const 35360
  i32.const 35408
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2564
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $5
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  local.get $5
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
