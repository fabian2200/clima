import axios from 'axios';

export function http() {
    return axios.create({
        //baseURL: 'http://127.0.0.1:8000/'
        //baseURL: 'http://192.168.0.45:8000/'
        baseURL: 'https://tkqpqaql.lucusvirtual.es/'
    });
}