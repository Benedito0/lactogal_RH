
<template>
  <v-app>
    <NavBar/>
    <v-content class="mx-4">
       <router-view/>
    </v-content>

      <v-footer class="pa-3">
    <v-spacer></v-spacer>
    <div>&copy; {{ new Date().getFullYear() }}</div>
  </v-footer>

  </v-app>
</template>

<script>

import NavBar from '@/components/NavBar'
import Login from '@/views/Login.vue'
import fb from '@/DB_config/firestore'
import Router from 'vue-router'

const router = new Router({
  mode: 'history',
  routes: [
    {
        path: '/login',
        name: 'login',
        component: Login
       
    }
  ],
});



require('firebase/auth')
var isLogged = false

  
fb.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.
   

     console.log("logado")

} else {
    // User is signed out.
   // router.go('/login')
    console.log("deslogado")
    

    
  }
});

export default {
  name: 'App',
  components: {
    NavBar
    
    
  },
  data () {
    return {
     isLoggedIn : isLogged
    }
  }
}

</script>


