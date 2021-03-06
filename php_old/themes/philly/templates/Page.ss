<!DOCTYPE html>
<html lang="en" >
  <head>
    <% base_tag %>
    <title>Cycle_</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />

    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,400italic'>
    <link rel="stylesheet" href="bower_components/angular-material/angular-material.css"/>
    <link rel="stylesheet" href="{$ThemeDir}/css/icomoon/style.css">
    <link rel="stylesheet" href="{$ThemeDir}/css/app.css"/>
  </head>

<body ng-app="cycleApp" layout="column" ng-controller="CycleController as ul" layout-align="end start">
<md-toolbar style="position:fixed">
  <div class="md-toolbar-tools">
    <div layout="column" layout-align="start start">
      <div layout="row">
        <md-icon md-font-icon="{{ul.weather.icon.name}}"
           ng-style="{color: ul.weather.icon.color }"
           ng-class="md-warn"
           alt="weather Icon"
           class="step ">
        </md-icon>
        <span>{{ul.weather.temperature}}</span>
        <md-icon md-font-icon="{{ul.weather.temperatureicon.name}}"
           ng-style="{color: ul.weather.temperatureicon.color }"
           ng-class="md-warn"
           alt="weather Icon"
           class="step ">
        </md-icon>
      </div>
      <span class="{{ul.weather.style}}" ng-style="md-warn">{{ul.weather.message}}</span>
  </div>
  <span flex></span>
    <h2>
      <img id="navbar-logo" class="img-responsive" src="./assets/logo.png" style="width: 55px; padding-top: 5px;">
    </h2>
    <span flex></span>
    
    <md-button class="md-icon-button" ng-click="ul.toggleList()" aria-label="Favorite">
      <md-icon md-svg-icon="menu" ></md-icon>
    </md-button>
  </div>
</md-toolbar>
<div flex layout="column" style="padding-top:60px;" layout-fill>
     

  <md-sidenav class="md-sidenav-right md-whiteframe-z2" md-component-id="right">
    <div style="background-color:#ccc" layout="row" layout-align="start center" layout-padding class="md-accent md-hue-2 md-whiteframe-z1">
      <h2 flex="75">CyclePhilly</h2>
      <md-button class="md-accent md-hue-2" ng-click="ul.openSignIn(\$event)" class="">
            <span style="">Sign In</span>
          </md-button>
    </div>
    <md-divider></md-divider>
    <md-list>
      <md-item layout="column">
          <md-button ng-click="ul.openPage('home')" class="">

            <span flex class="menu-link">Home</span>
            <md-icon style="" md-svg-icon="home" class="menu-icon"></md-icon>
          </md-button>

      </md-item>

      <md-item>
          <md-button ng-click="ul.openPage('about')" ng-class="svg-1">
            
            <span style="" class="menu-link">About</span>
            <md-icon style="" md-svg-icon="help" class="menu-icon"></md-icon>
          </md-button>
      </md-item>

      <md-item>
          <md-button ng-click="ul.openPage('maps')" ng-class="svg-1">
            
            <span style="" class="menu-link">Maps</span>
            <md-icon style="" md-svg-icon="map" class="menu-icon"></md-icon>
          </md-button>
      </md-item>

     <!--  <md-item>
          <md-button ng-click="ul.openPage('shop')" ng-class="svg-1">
            
            <span style="" class="menu-link">Shop</span>
            <md-icon style="" md-svg-icon="shopping" class="menu-icon"></md-icon>
          </md-button>
      </md-item>
-->
      <md-item>
          <md-button ng-click="ul.openPage('partners')" ng-class="svg-1">
            
            <span style="" class="menu-link">Partners</span>
            <md-icon style="" md-svg-icon="star" class="menu-icon star"></md-icon>
          </md-button>
      </md-item>
    </md-list>
    <md-divider></md-divider>
    <footer layout="column">
        <md-button ng-click="ul.openPage('terms')" ng-class="svg-1">Terms and Privacy</md-button>
      
    <p layout-padding><a href="mailto:support@cyclephilly.org">Contact Us</a></p>
     </footer>
  </md-sidenav>
  {{tripCount}}
    <ng-viewport></ng-viewport>
    <div>$Form</div>
    <span flex></span>
    <div id="counter" layout="row" layout-align="start center" layout-padding style="position:fixed;">
      <p>{{ul.tripCount}}</p>
    </div>

    </div>

    <script src="/components/home/home.js"></script>
    <script src="/components/terms/terms.js"></script>
    <script src="/components/about/about.js"></script>
    <script src="/components/partners/partners.js"></script>
    <script src="/components/shop/shop.js"></script>
    <script src="/components/maps/maps.js"></script>
  </body>
</html>
