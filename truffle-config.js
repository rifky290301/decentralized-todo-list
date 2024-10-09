module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Localhost (Ganache)
      port: 7545,        // Port default Ganache
      network_id: "*",   // Any network (Ganache uses this)
    },
  },
  // Configure your compilers
  compilers: {
    solc: {
      version: "0.8.0", // Solidity version
    },
  },
};
