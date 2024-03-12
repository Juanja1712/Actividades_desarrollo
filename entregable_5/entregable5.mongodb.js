/* global use, db */

const database = 'b4w1m9w9pl2dc80w8f7a';
const collection = 'users';

// Cambiar a la base de datos especificada
use(database);

// 1. Listado de todos los usuarios con 20 años de edad
const users20 = db[collection].find({ edad: 20 }, { nombres: 1, apellidos: 1, edad: 1, _id: 0 });

// 2. Listado de todas las mujeres entre 20 y 30 años de edad
const females20to30 = db[collection].find({ genero: 'M', edad: { $gte: 20, $lte: 30 } });

// 3. Persona con menor edad de la base de datos
const youngestPerson = db[collection].find().sort({ edad: 1 }).limit(1);

// 4. Cuantos usuarios hay registrados
const userCount = db[collection].find().count();

// 5. Traer los 5 primeros usuarios
const first5Users = db[collection].find().limit(5);

// 6. Traer los 10 últimos usuarios
const last10Users = db[collection].find().sort({ $natural: -1 }).limit(10);

// 7. Listar usuarios con correo que finalice en .net
const usersWithNetEmail = db[collection].find({ correo: /.*\.net$/ });

// 8. Listar usuarios que no vivan en Colombia
const usersNotInColombia = db[collection].find({ pais: { $ne: 'colombia' } });

// 9. Listar usuarios que no vivan en Ecuador y Panamá
const usersNotInEcuadorPanama = db[collection].find({ pais: { $nin: ['ecuador', 'panama'] } });

// 10. Contar usuarios de Colombia a los que les gusta el rock
const colombianRockUsersCount = db[collection].find({ pais: 'colombia', musica: 'rock' }).count();

// 11. Actualizar el genero musical de todos los usuarios de la base de datos de 'metal' a 'carranga'
db[collection].updateMany({ musica: 'metal' }, { $set: { musica: 'carranga' } });

// 12. Listado de hombres que les guste la carranga, sean de Colombia y tengan entre 10 y 20 años de edad
const maleCarrangaUsers = db[collection].find({ genero: 'M', pais: 'colombia', edad: { $gte: 10, $lte: 20 }, musica: 'carranga' });

// 13. Actualizar todos los usuarios que tengan 90 años, su nuevo genero musical favorito sera la 'carranga'
db[collection].updateMany({ edad: 90 }, { $set: { musica: 'carranga' } });

// 14. Listar todos los usuarios que su nombre inice con A
const usersStartingWithA = db[collection].find({ nombres: /^A/ });

// 15. Listar todos los usuarios que su nombre finalice con Z
const usersEndingWithZ = db[collection].find({ nombres: /Z$/ });

// 16. Actualizar los usuarios que tengan 50 años de edad, su nuevo genero musical será NULL
db[collection].updateMany({ edad: 50 }, { $set: { musica: null } });

// 17. Listar todos los usuarios que su genero musical sea igual a NULL
const usersWithNullMusic = db[collection].find({ musica: null });

// 18. Cual es el resultado de la suma de todas las edades de la base de datos
const totalAgeSum = db[collection].aggregate([{ $group: { _id: null, total: { $sum: '$edad' } } }]);

// 19. Cuantos usuarios tenemos registrados de Ecuador
const ecuadorUserCount = db[collection].find({ pais: 'ecuador' }).count();

// 20. Cuantos usuarios son de Colombia y les gusta el vallenato
const colombianVallenatoUsersCount = db[collection].find({ pais: 'colombia', musica: 'vallenato' }).count();
