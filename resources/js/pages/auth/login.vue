<template>
  <div class="container">
    <h1 class="logintitle">
      {{ $t("login") }}
    </h1>

    <form @submit.prevent="login" @keydown="form.onKeydown($event)">
      <!-- Email -->
      <div class="form-group row">
        <!--            <label class="col-md-3 col-form-label text-md-right">{{ $t('email') }}</label>-->
        <div class="col">
          <input
            v-model="form.email"
            :class="{ 'is-invalid': form.errors.has('email') }"
            class="form-control mx-auto inputfieldbox"
            type="email"
            name="email"
            placeholder="Enter Email Address"
          >
          <has-error :form="form" field="email" class="errorMsg" />
        </div>
      </div>

      <!-- Password -->
      <div class="form-group row">
        <!--            <label class="col-md-3 col-form-label text-md-right">{{ $t('password') }}</label>-->
        <div class="col">
          <input
            v-model="form.password"
            :class="{ 'is-invalid': form.errors.has('password') }"
            class="form-control mx-auto inputfieldbox"
            type="password"
            name="password"
            placeholder="Enter Password"
          >
          <has-error :form="form" field="password" class="errorMsg" />
        </div>
      </div>

      <!--          &lt;!&ndash; Remember Me &ndash;&gt;-->
      <!--          <div class="form-group row">-->
      <!--            <div class="col-md-3" />-->
      <!--            <div class="col-md-7 d-flex">-->
      <!--              <checkbox v-model="remember" name="remember">-->
      <!--                {{ $t('remember_me') }}-->
      <!--              </checkbox>-->

      <!--              <router-link :to="{ name: 'password.request' }" class="small ml-auto my-auto">-->
      <!--                {{ $t('forgot_password') }}-->
      <!--              </router-link>-->
      <!--            </div>-->
      <!--          </div>-->

      <div class="form-group row">
        <!--            col-md-7 offset-md-3 d-flex-->
        <div class="col-xl-2 col-md-2" />
        <div class="col-xl-7 col-md-7 col-xs-12">
          <!-- Submit Button -->
          <v-button :loading="form.busy" class="btn btn-primary loginbtn ml-5">
            {{ $t("login") }}
          </v-button>
          <button class="btn btn-outline-primary createacc mx-1">
            Create Account
          </button>
          <button type="button" class="btn btn-info resetpass">
            Reset Password
          </button>

          <!-- GitHub Login Button -->
          <login-with-github />
        </div>
        <div class="col-xl-3 col-md-3" />
      </div>
    </form>
    <!-- <h4>{{ getEmail }}</h4> -->
  </div>
</template>

<script>
import Form from 'vform'
import Cookies from 'js-cookie'
import LoginWithGithub from '~/components/LoginWithGithub'
import { mapGetters } from 'vuex'

export default {
  components: {
    LoginWithGithub
  },

  middleware: 'guest',

  metaInfo () {
    return { title: this.$t('login') }
  },

  data: () => ({
    form: new Form({
      email: '',
      password: ''
    }),
    remember: false
  }),

  methods: {
    async login () {
      // Submit the form.
      const { data } = await this.form.post('/api/login')

      // Save the token.
      this.$store.dispatch('auth/saveToken', {
        token: data.token,
        remember: this.remember
      })

      // Fetch the user.
      await this.$store.dispatch('auth/fetchUser')

      // Redirect home.
      this.redirect()
    },

    redirect () {
      const intendedUrl = Cookies.get('intended_url')

      if (intendedUrl) {
        Cookies.remove('intended_url')
        this.$router.push({ path: intendedUrl })
      } else {
        this.$router.push({ name: 'settings.profile' })
      }
    },

    // Populate the Login Email field
    populateEmail (email) {
      if (email.length !== 0) {
        return (this.form.email = email)
      } else {
        return this.form.email
      }
    }
  },

  // Getting an email from the state.
  computed: mapGetters({
    getEmail: 'welcomeEmail/email'
  }),

  created () {
    this.populateEmail(this.getEmail)
  }
}
</script>

<style>
.resetpass {
  background-color: red !important;
  border-color: red !important;
  padding: 6px 12px;
  font: 16px Roboto;
  border-radius: 3px;
  color: #ffffff;
}
.createacc {
  padding: 6px 12px;
  font: 16px Roboto;
  border-radius: 3px;
  color: #007bff;
}
.loginbtn {
  padding: 6px 12px;
  font: 16px Roboto;
  border-radius: 3px;
  background-color: #007bff;
  color: #ffffff;
}

.errorMsg {
  margin-left: auto;
  margin-right: auto;
  margin-left: 240px;
}
.logintitle {
  text-align: center;
  font-family: Arial;
  font-size: 40px;
  color: #212529;
  text-decoration: none solid rgb(33, 37, 41);
}
.inputfieldbox {
  width: 624px;
  height: 38px;
  padding: 0px 8px;
  border: 1px solid #121212;
  border-radius: 5px;
  background-color: #ffffff;
  background-size: cover;
  font-family: Arial;
  font-size: 14px;
  color: #121212;
  text-decoration: none solid rgb(18, 18, 18);
}
body{
  overflow-y: hidden;
}

@media only screen and (max-width: 600px) {

  .logintitle {
    margin-top: 10px;
    font-size: 25px;
  }
  .inputfieldbox {
    width: 80% !important;
  }
  .loginbtn {
    padding: 3px;
    display: block;
    width: 80%;
    margin-left: auto !important;
    margin-right: auto !important;
  }
  .createacc{
    margin-top: 5px;
    padding: 3px;
    display: block;
    width: 80%;
    margin-left: auto !important;
    margin-right: auto !important;
  }
  .resetpass{
    margin-top: 5px !important;
    padding: 3px;
    display: block;
    width: 80%;
    margin: auto;
  }
  .errorMsg{
    margin: 0px;
    text-align: center;

  }
}
</style>
