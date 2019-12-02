<template>
  <div>
    <obecnews></obecnews>
    <obecabout></obecabout>
    <obectutorial></obectutorial>
    <obeccontact></obeccontact>
    <obecapoio></obecapoio>
  </div>
</template>

<script>

import obecnews from './obecnews'
import obecabout from './obecabout'
import obectutorial from './obectutorial'
import obecapoio from './obecapoio'
import obeccontact from './obeccontact'

export default {
  name: 'home',
  components: {
    obecnews, obecabout, obectutorial, obeccontact,obecapoio
  }
}
</script>