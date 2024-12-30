import { Schema, model } from 'mongoose';

const postSchema = new Schema({
    title: String,
    author: String,
    content: String,
    comments: [{ body: String, date: Date }],
    date: { type: Date, default: Date.now },
    isVisible: Boolean,
});

const Post = model('Post', postSchema);
