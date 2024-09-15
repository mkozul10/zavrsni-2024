import { configuration } from './configuration.js';
import { MongoClient } from 'mongodb';

let dbConnection;

export const connectToDb = async (cb) => {
    const client = await MongoClient.connect(`mongodb://${configuration.mongoUsername}:${configuration.mongoPassword}@mongo:27017?authSource=admin`);
    try {
        dbConnection = client.db(`${configuration.mongoDatabase}`);
        await dbConnection.createCollection(`${configuration.mongoCollection}`);
        return cb();
    } catch (err) {
        console.log(err);
        return cb(err);
    }
}

export const getDb = () => dbConnection;