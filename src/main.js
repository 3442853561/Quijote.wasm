var mem = new WebAssembly.Memory({initial:10});

function importObject() {
  this.std = new std();
}

function std() {
  this.debug = function (index, length) {
    let bytes = new Uint8Array(mem.buffer, index, length);
    let str = new TextDecoder('utf8').decode(bytes);
    console.log(str);
  };
  this.memory = mem;
}
