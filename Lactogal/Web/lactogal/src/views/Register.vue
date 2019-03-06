<template>
  <v-form
    ref="form"
    v-model="valid"
    lazy-validation
  >
    <v-text-field
      v-model="name"
      :counter="10"
      :rules="nameRules"
      label="Name"
      required
    ></v-text-field>

    <v-text-field
      v-model="email"
      :rules="emailRules"
      label="E-mail"
      required
    ></v-text-field>

    <v-checkbox
      v-model="legislacaocheckbox"
      :rules="[v => !!v || 'You must agree to continue!']"
      label="Legislação"
      required
    ></v-checkbox>

    <v-checkbox
      v-model="timecheckbox"
      :rules="[v => !!v || 'You must agree to continue!']"
      label="Gestão de Tempo"
      required
    ></v-checkbox>

    <v-checkbox
      v-model="salarycheckbox"
      :rules="[v => !!v || 'You must agree to continue!']"
      label="Salários"
      required
    ></v-checkbox>

    <v-btn
      :disabled="!valid"
      color="success"
      @click="validate">
      Concluir registo
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
      
      checkbox: false
    }),

    methods: {
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