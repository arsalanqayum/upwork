<template>
  <div class="main-layout">

    <div class="npfundy-content">
      <child />
    </div>

  </div>
</template>

<script>
import Navbar from '~/components/Navbar'
import Footer from '~/components/Footer'

export default {
  name: 'MainLayout',

  components: {
    Navbar,
    Footer
  }
}
</script>
<style>
.npfundy-content{
  height: 200vh;
}
</style>
