const grpc = require('@grpc/grpc-js');
const protoLoader = require('@grpc/proto-loader');
const updateAlarmsTable = require('../Database/alarms')

const packageDefinition = protoLoader.loadSync('alarms.proto', {
    keepCase: true,
    longs: String,
    enums: String,
    defaults: true,
    oneofs: true

})

const alarmsProto = grpc.loadPackageDefinition(packageDefinition);

function sendAlarms(call, callback) {
    callback(null, { call });
}

const server = new grpc.Server();
server.addService(alarmsProto.alarmsService.service, { SendAlarms: sendAlarms })

const port = '0.0.0.0:50051';

server.bindAsync(port, grpc.ServerCredentials.createInsecure, (err, port) => {
    if (err) {
        console.log(`Error starting gRPC server ${err}`);
    }
    else {
        `gRPC server is running at port ${port}`
    }
})
