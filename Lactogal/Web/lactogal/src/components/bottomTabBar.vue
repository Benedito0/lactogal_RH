<template>

    <v-bottom-nav
      :value="true"
      absolute
      
      class="bottom"
    >
      <v-btn
        color="blue darken-2"
        flat
        v-for="link in links" :key="link.text" router :to="link.route"
      >
        <span>{{link.text}}</span>
        <v-icon>{{link.icon}}</v-icon>
      </v-btn>

      
    </v-bottom-nav>
 
</template>

<script>

  export default {
    
    data () {
      return {
        links:[
                {icon:'home', text: 'Em espera', route: '/my'},
                {icon:'feedback', text: 'Activos', route: '/my/active'},
                {icon:'history', text: 'Histórico', route: '/my/completed'}
                
            ]
            
      }
    }
  }
</script>