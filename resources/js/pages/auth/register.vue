<template>
  <div class="container" style="padding-bottom: 125px">
    <card v-if="mustVerifyEmail" :title="$t('register')">
      <div class="alert alert-success" role="alert">
        {{ $t("verify_email_address") }}
      </div>
    </card>
    <!--      <card v-else :title="$t('register')">-->
    <!--        -->
    <!--      </card>-->

    <form
      style="height: 200vh"
      class="pb-20"
      @submit.prevent="register"
      @keydown="form.onKeydown($event)"
    >
      <!-- Name -->
      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("name") }}</label>
          <input
            v-model="form.name"
            :class="{ 'is-invalid': form.errors.has('name') }"
            :placeholder="$t('name')"
            class="form-control"
            type="text"
            name="name"
          >
          <has-error :form="form" field="name" />
        </div>
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("first_name") }}</label>
          <input
            v-model="form.first_name"
            :class="{ 'is-invalid': form.errors.has('first_name') }"
            :placeholder="$t('first_name')"
            class="form-control"
            type="text"
            name="first_name"
          >
          <has-error :form="form" field="first_name" />
        </div>
      </div>

      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-7 m-auto">-->
      <!--            <label class="col-form-label ">{{ $t('first_name') }}</label>-->
      <!--            <input v-model="form.first_name" :class="{ 'is-invalid': form.errors.has('first_name') }" :placeholder="$t('first_name')"  class="form-control" type="text" name="first_name">-->
      <!--            <has-error :form="form" field="first_name" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("last_name") }}</label>
          <input
            v-model="form.last_name"
            :class="{ 'is-invalid': form.errors.has('last_name') }"
            :placeholder="$t('last_name')"
            class="form-control"
            type="text"
            name="last_name"
          >
          <has-error :form="form" field="last_name" />
        </div>
        <!--          Email-->
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("email") }}</label>
          <input
            v-model="form.email"
            :class="{ 'is-invalid': form.errors.has('email') }"
            class="form-control"
            :placeholder="$t('email')"
            type="email"
            name="email"
          >
          <has-error :form="form" field="email" />
        </div>
      </div>

      <!-- Email -->
      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-7 m-auto">-->
      <!--            <label class="col-form-label">{{ $t('email') }}</label>-->
      <!--            <input v-model="form.email" :class="{ 'is-invalid': form.errors.has('email') }" class="form-control" :placeholder="$t('email')" type="email" name="email">-->
      <!--            <has-error :form="form" field="email" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("alternative_email") }}</label>
          <input
            v-model="form.alternative_email"
            :class="{ 'is-invalid': form.errors.has('alternative_email') }"
            :placeholder="$t('alternative_email')"
            class="form-control"
            type="text"
            name="alternative_email"
          >
          <has-error :form="form" field="alternative_email" />
        </div>
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("home_phone") }}</label>
          <input
            v-model="form.home_phone"
            :class="{ 'is-invalid': form.errors.has('home_phone') }"
            class="form-control"
            :placeholder="$t('home_phone')"
            type="text"
            name="home_phone"
          >
          <has-error :form="form" field="home_phone" />
        </div>
      </div>

      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-6 col-xs-12 m-auto">-->
      <!--            <label class="col-form-label">{{ $t('home_phone') }}</label>-->
      <!--            <input v-model="form.home_phone" :class="{ 'is-invalid': form.errors.has('home_phone') }" class="form-control" :placeholder="$t('home_phone')" type="text" name="home_phone">-->
      <!--            <has-error :form="form" field="home_phone" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("mobile_phone") }}</label>
          <input
            v-model="form.mobile_phone"
            :class="{ 'is-invalid': form.errors.has('mobile_phone') }"
            class="form-control"
            :placeholder="$t('mobile_phone')"
            type="text"
            name="mobile_phone"
          >
          <has-error :form="form" field="mobile_phone" />
        </div>
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("street_address_one") }}</label>
          <input
            v-model="form.street_address_one"
            :class="{ 'is-invalid': form.errors.has('street_address_one') }"
            class="form-control"
            :placeholder="$t('street_address_one')"
            type="text"
            name="street_address_one"
          >
          <has-error :form="form" field="street_address_one" />
        </div>
      </div>

      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-6  col-xs-12 m-auto">-->
      <!--            <label class="col-form-label">{{ $t('street_address_one') }}</label>-->
      <!--            <input v-model="form.street_address_one" :class="{ 'is-invalid': form.errors.has('street_address_one') }" class="form-control" :placeholder="$t('street_address_one')" type="text" name="street_address_one">-->
      <!--            <has-error :form="form" field="street_address_one" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="= col-form-label">{{ $t("street_address_two") }}</label>
          <input
            v-model="form.street_address_two"
            :class="{ 'is-invalid': form.errors.has('street_address_two') }"
            :placeholder="$t('street_address_two')"
            class="form-control"
            type="text"
            name="street_address_two"
          >
          <has-error :form="form" field="street_address_two" />
        </div>
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("city") }}</label>
          <input
            v-model="form.city"
            :class="{ 'is-invalid': form.errors.has('city') }"
            class="form-control"
            :placeholder="$t('city')"
            type="text"
            name="city"
          >
          <has-error :form="form" field="city" />
        </div>
      </div>

      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-6 col-xs-12 m-auto">-->
      <!--            <label class=" col-form-label">{{ $t('city') }}</label>-->
      <!--            <input v-model="form.city" :class="{ 'is-invalid': form.errors.has('city') }" class="form-control" :placeholder="$t('city')" type="text" name="city">-->
      <!--            <has-error :form="form" field="city" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("state") }}</label>
          <input
            v-model="form.state"
            :class="{ 'is-invalid': form.errors.has('state') }"
            class="form-control"
            :placeholder="$t('state')"
            type="text"
            name="state"
          >
          <has-error :form="form" field="state" />
        </div>
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("zip_code") }}</label>
          <input
            v-model="form.zip_code"
            :class="{ 'is-invalid': form.errors.has('zip_code') }"
            class="form-control"
            :placeholder="$t('zip_code')"
            type="text"
            name="zip_code"
          >
          <has-error :form="form" field="zip_code" />
        </div>
      </div>

      <div class="form-group row">
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("password") }}</label>
          <input
            v-model="form.password"
            :class="{ 'is-invalid': form.errors.has('password') }"
            :placeholder="$t('password')"
            class="form-control"
            type="password"
            name="password"
          >
          <has-error :form="form" field="password" />
        </div>
        <!--          Password confirmation-->
        <div class="col-md-6 col-xs-12 m-auto px-4">
          <label class="col-form-label">{{ $t("confirm_password") }}</label>
          <input
            v-model="form.password_confirmation"
            :class="{ 'is-invalid': form.errors.has('password_confirmation') }"
            :placeholder="$t('confirm_password')"
            class="form-control"
            type="password"
            name="password_confirmation"
          >
          <has-error :form="form" field="password_confirmation" />
        </div>
      </div>

      <!-- Password Confirmation -->
      <!--        <div class="form-group row">-->
      <!--          <div class="col-md-6 col-xs-12 m-auto">-->
      <!--            <label class="col-form-label">{{ $t('confirm_password') }}</label>-->
      <!--            <input v-model="form.password_confirmation" :class="{ 'is-invalid': form.errors.has('password_confirmation') }" :placeholder="$t('confirm_password')" class="form-control" type="password" name="password_confirmation">-->
      <!--            <has-error :form="form" field="password_confirmation" />-->
      <!--          </div>-->
      <!--        </div>-->

      <div class="form-group row">
        <div class="col-md-7 m-auto px-4">
          <!-- Submit Button -->
          <v-button :loading="form.busy">
            {{ $t("register") }}
          </v-button>

          <!-- GitHub Register Button -->
          <login-with-github />
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import Form from 'vform'
import LoginWithGithub from '~/components/LoginWithGithub'
import { mapGetters } from 'vuex'

export default {
  components: {
    LoginWithGithub
  },

  middleware: 'guest',

  metaInfo () {
    return { title: this.$t('register') }
  },

  data: () => ({
    form: new Form({
      name: '',
      first_name: '',
      last_name: '',
      email: '',
      alternative_email: '',
      home_phone: '',
      mobile_phone: '',
      street_address_one: '',
      street_address_two: '',
      city: '',
      state: '',
      zip_code: '',
      password: '',
      password_confirmation: ''
    }),
    mustVerifyEmail: false
  }),

  methods: {
    async register () {
      // Register the user.
      const { data } = await this.form.post('/api/register')

      // Must verify email fist.
      if (data.status) {
        this.mustVerifyEmail = true
      } else {
        // Log in the user.
        const {
          data: { token }
        } = await this.form.post('/api/login')

        // Save the token.
        this.$store.dispatch('auth/saveToken', { token })

        // Update the user.
        await this.$store.dispatch('auth/updateUser', { user: data })

        // Redirect home.
        this.$router.push({ name: 'home' })
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
  // <---------------- End-Methods --------------------->

  // Getting an email from the state.
  computed: mapGetters({
    getEmail: 'welcomeEmail/email'
  }),

  created () {
    this.populateEmail(this.getEmail)
  }
}
</script>
