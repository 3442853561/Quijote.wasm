var importObject = function () {
  return {
    std: {
      debug: function (index, length) {
        let bytes = new Uint8Array(mem.buffer, index, length);
        let str = new TextDecoder('utf8').decode(bytes);
        console.log(str);
      }
    }
  };
}

