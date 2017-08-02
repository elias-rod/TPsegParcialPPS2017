import { Component } from '@angular/core';
import { NavController, ToastController, LoadingController } from 'ionic-angular';
import { NativeAudio } from '@ionic-native/native-audio';
import { Vibration } from '@ionic-native/vibration';

import { TranslateService } from '@ngx-translate/core';

import {
 GoogleMaps,
 GoogleMap,
 GoogleMapsEvent,
 LatLng,
 CameraPosition,
 MarkerOptions,
 Marker
} from '@ionic-native/google-maps';

@Component({
  selector: 'page-localizacion',
  templateUrl: 'localizacion.html'
})

export class Localizacion {
  constructor(public navCtrl: NavController,
  public toastCtrl: ToastController,
  private nativeAudio: NativeAudio,
  public loadingCtrl: LoadingController,
  private vibration: Vibration,
  public translate: TranslateService,
  private googleMaps: GoogleMaps) {
    this.nativeAudio.preloadSimple('yay', 'assets/sounds/yay.wav');
    this.nativeAudio.preloadSimple('error', 'assets/sounds/error.mp3');
  }

  ElegirEspanol(){
    this.translate.setDefaultLang('es');
    this.vibration.vibrate(100);
    this.nativeAudio.play('yay');
  }
  // Load map only after view is initialized
  ngAfterViewInit() {
    this.loadMap();
  }

  loadMap() {
    // create a new map by passing HTMLElement
    let element: HTMLElement = document.getElementById('map');

    let map: GoogleMap = this.googleMaps.create(element);

    let latLng = new LatLng(-34.599722, -58.381944);

    map.one(GoogleMapsEvent.MAP_READY)
    .then(()=>{
      let position: CameraPosition = {
        target: latLng,
        zoom: 3,
        tilt: 0
      }
      map.moveCamera(position);
      
      let markerOptions: MarkerOptions = {
        position: latLng
      };

      let marker = map.addMarker(markerOptions)
      .then((marker: Marker) => {
            marker.showInfoWindow();
      });
    });
  }
}