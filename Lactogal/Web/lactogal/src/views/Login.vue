<template>
  <v-form
    ref="form"
    v-model="valid"
    lazy-validation
  >
    

    <v-text-field
      v-model="email"
      :rules="emailRules"
      label="E-mail"
      required
    ></v-text-field>

    <v-text-field
      v-model="password"
      :counter="10"
      :rules="nameRules"
      label="Password"
      required
      type="password"
    ></v-text-field>


    <v-btn
      :disabled="!valid"
      color="success"
      @click="login"
    >
      Login
    </v-btn>


  </v-form>
</template>

<script>
  export default {
    data: () => ({
      valid: true,
      name: '',
      nameRules: [
        v => !!v || 'Name is required',
        v => (v && v.length <= 10) || 'Name must be less than 10 characters'
      ],
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+/.test(v) || 'E-mail must be valid'
      ],
      select: null,
      items: [
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4'
      ],
      checkbox: false
    }),

    methods: {
      login(){
        firebase.auth().signInWithEmailAndPassword(email, password)
        .then(function(user){

          alert('logado')
          this.$router.push('/')
        })


        .catch(function(error) {
          // Handle Errors here.
          var errorCode = error.code;
          var errorMessage = error.message;
  // ...
});
      },
      validate () {
        if (this.$refs.form.validate()) {
          this.snackbar = true
        }
      },
      reset () {
        this.$refs.form.reset()
      },
      resetValidation () {
        this.$refs.form.resetValidation()
      }
    }
  }
</script>