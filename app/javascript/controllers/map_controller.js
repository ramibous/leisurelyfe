import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    this.collapseElement = document.getElementById('mapDropdown')
    if (this.collapseElement) {
      this.collapseElement.addEventListener('shown.bs.collapse', this.initializeMap.bind(this))
    } else {
      this.initializeMap()
    }

    const mapStyleSelector = document.getElementById('mapStyleSelector')
    if (mapStyleSelector) {
      mapStyleSelector.addEventListener('change', (e) => {
        this.changeMapStyle(e.target.value)
      })
    }
  }

  initializeMap() {
    if (this.map) return // Prevents reinitialization of the map

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v11" // Default style
    })

    // Add navigation control (the +/- zoom buttons)
    this.map.addControl(new mapboxgl.NavigationControl())

    // Add geolocate control to the map
    this.map.addControl(
      new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
        trackUserLocation: true,
        showUserHeading: true
      })
    )

    this.map.on('load', () => {
      this.addMarkersToMap()
      this.fitMapToMarkers()
    })
  }

  changeMapStyle(style) {
    if (this.map) {
      this.map.setStyle(style)
    }
  }

  addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      customMarker.className = "custom-marker"

      // Pass the element as an argument to the new marker
      const mapMarker = new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)

      // Add click event to show confirmation popup
      customMarker.addEventListener('click', () => {
        this.showConfirmationPopup(marker)
      })
    })
  }

  fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  showConfirmationPopup(marker) {
    // Create a confirmation popup
    const confirmationPopup = document.createElement('div')
    confirmationPopup.className = 'confirmation-popup'
    confirmationPopup.innerHTML = `
      <div class="confirmation-popup-content">
        <p>Do you want to open this location in Google Maps?</p>
        <button id="confirmBtn">Yes</button>
        <button id="cancelBtn">No</button>
      </div>
    `
    document.body.appendChild(confirmationPopup)

    // Handle confirm button click
    document.getElementById('confirmBtn').addEventListener('click', () => {
      window.open(`https://www.google.com/maps/dir/?api=1&destination=${marker.lat},${marker.lng}`, '_blank')
      document.body.removeChild(confirmationPopup)
    })

    // Handle cancel button click
    document.getElementById('cancelBtn').addEventListener('click', () => {
      document.body.removeChild(confirmationPopup)
    })
  }
}
