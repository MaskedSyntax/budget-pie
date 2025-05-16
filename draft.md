BudgetPie

- Language:
- Dart
- UI Framework:
- Flutter (Flutter Widgets)
- Android: Material Design
- iOS: Cupertino Widgets
- Database:
- Hive: Lightweight, NoSQL database, highly performant
- Drift: Powerful, reactive SQLite wrapper, Similar to Room
- Firebase Firestore (for cloud sync)
- State Management:
- Provider: Lightweight, Easy to learn (suitable for small-to-medium apps)
- Riverpod: Improved version of Provider with better scalability. --> Seems Most Suitable
- Bloc: A bit more advanced, ideal for apps with complex state requirements.
- Monetization (need research):
- in_app_purchase flutter plugin
- RevenueCat
- Minimum Viable Product (MVP) (2-4 weeks):
- Basic Expense Tracking:
- Add exp with categories, amounts, notes.
- Display list of all exp with total exp
- Local Data Storage
- Simple UI
- Form + Dashboard
- Basic Filters
- By date and By Category
- Monetization:
- A "Coming Soon" section
- Future Features:
- FREE
- Visual Analytics
- Simple Chart (use fl_chart) to show spending trends over time
- Pie charts for category-wise spending
- Recurring Expense Reminder
- Reminders for recurring exp (Use flutter_local_notifications)
- Categories
- Add predefinded categories like Food, Transport, Bills, etc
- Dark Mode (Thememode with Flutter's MaterialApp)
- Export to CSV
- PAID
- Cloud Sync (Firestore)
- sync data across devices (use cloud_firestore)
- Multi-currency support (use exchangeratesapi.io)
- Goal-Based Saving
- Users can set goals and track progress
- Budget Notification
- Notify users when nearing or exceeding their budget for a category
- Advanced Analytics
- Trend Analysis and AI-based insights (Eg. Detecting Overspending patterns)
- Customization Options
- Custom themes, categories, and dashboard layout
- Future Upgrades (Most Expensive Tier)
- Collaborative Budgets
- Shared budgets for families or couples
- Bank Integration
- Integrate something like Plaid
- Machine Learning Insights:
- Use ML Models to categorize expenses and provide spending recommendations
- TensorFlow Lite for Flutter is a good option
- Voice Input:
- Allow users to log expenses using voice commands (use speech_to_text plugin)
- Personalized Dashboards:
- Let users customize their dashboards (Eg reorder widgets, hide/show graphs)
- Use flutter_drag_and_drop
- Gamification (Future Upgrade - FREE tier):
- Introduce achievements or badges for hitting savings goals or staying within budget

# Expense Tracker Categories:

Essentials

- Rent/Mortgage
- Electricity
- Water
- Internet
- Gas
- Groceries
- Health Insurance
- Life Insurance
- Vehicle Insurance

Food & Dining

- Restaurants
- Takeout/Delivery
- Cafes
- Snacks
- Meal Subscriptions

Transportation

- Fuel
- Public Transport
- Rideshare
- Parking
- Vehicle Maintenance
- Car Loan

Health & Fitness

- Medicines
- Doctor/Dentist
- Gym Membership
- Health Supplements

Education & Subscriptions

- Online Courses
- Books
- Educational Apps
- Cloud Storage

Entertainment & Leisure

- Movies
- Games
- Hobbies
- Parties
- Events/Tickets
- Netflix
- Spotify

Shopping

- Clothes
- Electronics
- Gifts
- Home Decor
- Misc. Purchases

Travel

- Flights
- Hotels
- Local Transport
- Travel Insurance
- Activities

Work/Business

- Office Supplies
- Software Tools
- Client Meetings
- Freelance Expenses

Finance & Savings

- Savings Deposit
- Investment
- Loan Repayment
- Credit Card Payment
- Emergency Fund

Gifts & Donations

- Charity
- Family/Friend Gifts
- Festivals

Miscellaneous

- Unclassified
- One-time Purchases

Tags (for classification)

- Recurring
- One-time
