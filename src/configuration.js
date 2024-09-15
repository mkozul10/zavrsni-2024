import { config } from 'dotenv';

config();

export const configuration = {
    port: parseInt(process.env.PORT),
    mongoUsername: process.env.MONGO_INITDB_ROOT_USERNAME,
    mongoPassword: process.env.MONGO_INITDB_ROOT_PASSWORD,
    mongoDatabase: process.env.MONGO_DATABASE,
    mongoCollection: process.env.MONGO_COLLECTION
}