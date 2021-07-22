<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-color">
    <div class="container-fluid">
      <router-link
        :to="{ name: user ? 'welcome' : 'welcome' }"
        class="logo navbar-brand"
      >
        {{ appName }}
      </router-link>

      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarToggler"
        aria-controls="navbarToggler"
        aria-expanded="false"
      >
        <span class="navbar-toggler-icon" />
      </button>

      <div id="navbarToggler" class="collapse navbar-collapse bk-colr">
        <!--        <ul class="navbar-nav">-->
        <!--          <locale-dropdown />-->
        <!--          &lt;!&ndash; <li class="nav-item">-->
        <!--            <a class="nav-link" href="#">Link</a>-->
        <!--          </li> &ndash;&gt;-->
        <!--        </ul>-->

        <ul class="navbar-nav ml-auto">
          <li class="nav-item mt-2">
            <form class="input-group" @submit.prevent="submitSearch()">
              <input
                v-model="search"
                type="text"
                class="form-control"
                placeholder="Organization Search"
                aria-label=""
                aria-describedby="basic-addon1"
              >
              <div class="input-group-prepend">
                <button type="submit" class="btn border-customize btn-primary">
                  <img height="25px;" src="/assets/Icon_arrow.svg">
                </button>
              </div>
            </form>
          </li>

          <li class="nav-item mt-2">
            <router-link
              id="processBtn"
              class="btn btn-link"
              :to="{ name: 'about-us' }"
              style="color: black;"
            >
              About Us
            </router-link>
          </li>
          <li class="nav-item mt-2">
            <router-link
              id="pricingBtn"
              class="btn btn-link"
              :to="{ name: 'pricing' }"
              style="color: black;"
            >
              Pricing
            </router-link>
          </li>
          <!-- Authenticated -->
          <li v-if="user" class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle text-dark"
              href="#"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <img
                :src="user.photo_url"
                class="rounded-circle profile-photo mr-1"
              >
              {{ user.name }}
            </a>
            <div class="dropdown-menu">
              <router-link
                :to="{ name: 'settings.profile' }"
                class="dropdown-item pl-3"
              >
                <fa icon="cog" fixed-width />
                {{ $t("profile") }}
              </router-link>

              <div class="dropdown-divider" />
              <a href="#" class="dropdown-item pl-3" @click.prevent="logout">
                <fa icon="sign-out-alt" fixed-width />
                {{ $t("logout") }}
              </a>
            </div>
          </li>
          <!-- Guest -->
          <template v-else>
            <li class="nav-item mt-1">
              <router-link
                :to="{ name: 'login' }"
                class="nav-link"
                active-class="active"
              >
                {{ $t("login") }}
              </router-link>
            </li>
            <li class="nav-item mt-1">
              <router-link
                :to="{ name: 'register' }"
                class="nav-link"
                active-class="active"
              >
                {{ $t("register") }}
              </router-link>
            </li>
          </template>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
import { mapGetters } from 'vuex'
import LocaleDropdown from './LocaleDropdown'

export default {
  components: {
    // eslint-disable-next-line vue/no-unused-components
    LocaleDropdown
  },

  data: () => ({
    appName: window.config.appName,
    search: ''
  }),
  watch: {
    '$route.params.slug': function (value) {
      this.search = value
    }
  },
  computed: mapGetters({
    user: 'auth/user'
  }),

  methods: {
    async logout () {
      // Log out the user.
      await this.$store.dispatch('auth/logout')

      // Redirect to login.
      this.$router.push({ name: 'login' })
    },
    submitSearch () {
      if (this.search) {
        // eslint-disable-next-line camelcase
        var org_name = this.search
      } else {
        // eslint-disable-next-line camelcase,no-redeclare
        var org_name = 'all'
      }
      this.$router.push({
        name: 'organizations.listing.organization',
        params: { slug: org_name }
      })
    }
  }
}
</script>

<style scoped>
.bk-colr{
  background-color: #f2f2f2;
}
.profile-photo {
  width: 2rem;
  height: 2rem;
  margin: -0.375rem 0;
}
.border-customize {
  border-radius: 5px !important;
}
.navbar {
  height: 66px;
  fill: #f2f2f2;
  background-color: #f2f2f2;
  z-index: 9999;
  border: 1px solid #000000;
}
.logo {
  width: 77px;
  margin-left: 5%;
  font-family: Arial;
  font-size: 20px;
  color: #207ee8;
  text-decoration: none solid rgb(32, 126, 232);
}
.nav-item {
  line-height: 33px;
}
body{
  overflow: scroll;
  overflow-x: hidden;
}
</style>
