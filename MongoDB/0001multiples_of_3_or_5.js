/*
 + MongoDB 6.0.13
 * 0001multiples_of_3_or_5.js
 *
 * Copyright 2025 @GitHub JoergEm
 *
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *
 */

const numbers = Array.from({ length: 999 }, (_, i) => ({ nummer: i + 1 }));
db.numbers.insertMany(numbers);
const result = db.numbers.aggregate([
    {
        $match: {
            $or: [
                { nummer: { $mod: [3, 0] } },
                { nummer: { $mod: [5, 0] } }
            ]
        }
    },
    {
        $group: {
            _id: null,
            summe: { $sum: "$nummer" }
        }
    }
]).toArray();

printjson(result);