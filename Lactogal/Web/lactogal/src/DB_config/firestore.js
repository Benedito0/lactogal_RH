import firebase from 'firebase/app'
import 'firebase/firestore'

var config = {
    apiKey: "AIzaSyDh5a7yFp6ycum0pAEqSqoIsI8AypWmca8",
    authDomain: "lactogal-fd76e.firebaseapp.com",
    databaseURL: "https://lactogal-fd76e.firebaseio.com",
    projectId: "lactogal-fd76e",
    storageBucket: "lactogal-fd76e.appspot.com",
    messagingSenderId: "569302798074"
  };
  const fb = firebase.initializeApp(config);


  export default fb;



