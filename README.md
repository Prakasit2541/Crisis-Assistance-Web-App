“A Wide Assistance on Crisis Circumstance Location-Based Utilizing Web Application" 

# 🚨 Crisis Assistance Web App

A location-based web application designed to help users during emergency situations by providing quick access to nearby essential services such as hospitals, pharmacies, tow trucks, petrol stations, hotels, and mechanics.

## 🧠 Project Overview

This application serves as a digital support system during crisis scenarios by using location data to display nearby emergency and utility services. It is especially useful for travelers, accident victims, and individuals in unfamiliar locations.

## 🔧 Features

- 📍 Real-time location tracking
- 🏥 Find nearby hospitals and pharmacies
- 🛠️ Locate tow trucks and mechanics
- 🏨 Search for nearby hotels
- ⛽ Access nearby petrol bunks
- 🗺️ Map-based UI using Google Maps API

 (Detailed Description)

📍 Real-Time Location Tracking
	•	Utilizes the browser’s geolocation API to detect the user’s current location instantly.
	•	Automatically centers the map on the user’s position.
	•	Continuously updates location to help in moving scenarios (e.g., traveling by car).
	•	Ensures user consent is obtained before tracking.

🏥 Find Nearby Hospitals and Pharmacies
	•	Displays medical services within a defined radius of the user’s location.
	•	Allows users to view hospital/pharmacy details like name, address, and contact info.
	•	Useful in medical emergencies for quick decision-making.
	•	Integrated with Google Maps markers for accurate positioning.

🛠️ Locate Tow Trucks and Mechanics
	•	Shows towing services and vehicle repair centers near the user.
	•	Helps stranded drivers quickly find assistance during breakdowns or accidents.
	•	Includes filters to sort by service type (tow vs. mechanic).
	•	Designed for ease-of-use under high-stress roadside scenarios.

🏨 Search for Nearby Hotels
	•	Lists nearby hotels for accommodation in case of travel delays, roadblocks, or emergencies.
	•	Helps users find shelter during natural disasters or nighttime travel interruptions.
	•	Hotel entries may include price ranges and booking contact (optional for future expansion).

⛽ Access Nearby Petrol Bunks
	•	Displays gas stations close to the user’s current location.
	•	Ensures travelers don’t run out of fuel in unfamiliar or remote areas.
	•	Includes filtering for 24/7 open stations (future feature).

🗺️ Map-Based User Interface (Google Maps API)
	•	Interactive and user-friendly map view for service visualization.
	•	Clickable markers show additional service information.
	•	Zoom and drag functionalities for full control.
	•	Dynamic updates based on service filters or category selection.

## 🛠️ Tech Stack

| Layer         | Technology                   |
|---------------|------------------------------|
| Frontend      | HTML, CSS, JavaScript        |
| Backend       | Java (Servlets, JSP)         |
| Database      | MySQL                        |
| API           | Google Maps API              |
| Server        | Apache Tomcat                |

---

## 🗂️ Modules

1. *User Module* – Location permission, view services
2. *Admin Module* – Manage service listings (CRUD)
3. *Service Module* – Categorized service filters

---🗂️ Modules (Detailed Overview)

1. 👤 User Module

Handles all user-side interactions with the application.
	•	Detects and requests user location permission using browser APIs.
	•	Displays nearby services on an interactive map.
	•	Allows users to search, filter, and view service details.
	•	Responsive and user-friendly UI for quick access during emergencies.

2. 🛠️ Service Module

Responsible for organizing and displaying different types of emergency services.
	•	Categorizes services: Hospitals, Pharmacies, Tow Trucks, Mechanics, Petrol Bunks, Hotels.
	•	Uses Google Maps API to fetch and display service locations.
	•	Dynamically fetches service data from the database.
	•	Allows future scalability for adding more service categories.

3. 🧑‍💼 Admin Module

Provides backend control to manage service data.
	•	CRUD operations for managing service provider details.
	•	Admin dashboard to add, update, or remove services.
	•	Secured access to ensure only authorized admins can make changes.
	•	Useful for maintaining accurate and up-to-date service listings.


 📌 Future Improvements
	•	User login & history tracking
	•	Mobile responsiveness
	•	Multilingual support
	•	Integration with emergency contact APIs


🧑‍💻 Author

Darshini S.
Postgraduate in Computer Science | Entry-Level Tech Enthusiast | Eager to Learn & Build
LinkedIn • Email • GitHub
