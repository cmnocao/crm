
customers = Customer.create!([
{ first_name: 'Alyra', last_name: 'Alsudairi', email: '', comment: ''},
{ first_name: 'Rachel', last_name: 'George', email: '', comment: ''},
{ first_name: 'Ian', last_name: 'Mitchell', email: '', comment: ''},
{ first_name: 'Kate', last_name: 'Gilks', email: '', comment: ''},
{ first_name: 'Catherine', last_name: 'Abercrombie', email: '', comment: ''},
{ first_name: '', last_name: 'Asher', email: '', comment: ''},
{ first_name: 'Diana', last_name: 'Altman', email: '', comment: ''},
{ first_name: 'Julie', last_name: 'Anderson', email: '', comment: ''},
{ first_name: 'Jane', last_name: 'Adams', email: '', comment: ''},
{ first_name: 'K', last_name: 'Anderson', email: '', comment: ''},
{ first_name: 'M', last_name: 'Aspinall', email: '', comment: ''},
{ first_name: '', last_name: 'Andrew', email: '', comment: ''},
{ first_name: 'Lucy', last_name: 'Arnott', email: '', comment: ''},
{ first_name: 'V', last_name: 'Anderson', email: '', comment: ''},
{ first_name: 'Chicka', last_name: 'Akizawa', comment: ''},
{ first_name: 'Hanan', last_name: 'Alsalem', email: '', comment: ''},
{ first_name: 'Penny', last_name: 'Angel', email: '', comment: ''},
{ first_name: 'B C', last_name: 'Batman-Jeager', email: '', comment: ''},
{ first_name: 'D', last_name: 'Addington', comment: ''},
{ first_name: 'Philip ', last_name: 'Armstrong', email: '', comment: ''},
{ first_name: 'Janah', last_name: 'Al Mulla', email: '', comment: ''},
{ first_name: 'Caroline', last_name: 'Ayrton', email: '', comment: ''},
{ first_name: 'J R', last_name: 'Agnew', email: '', comment: ''},
{ first_name: 'Lady', last_name: 'Atckinson', email: '', comment: ''},
{ first_name: 'The Viscountess Allendale', last_name: '', email: '', comment: ''}
])

phones = Phone.create!([
  { number: '0096653930669', customer_id: '1' },
  { number: '07730558275', customer_id: '2' },
  { number: '07973787071', customer_id: '3' },
  { number: '07788971747', customer_id: '4' },
  { number: '07749073183', customer_id: '5' },
  { number: '01844342455', customer_id: '6' },
  { number: '', customer_id: '7' },
  { number: '01773409487', customer_id: '8' },
  { number: '01778342103', customer_id: '9' },
  { number: '01212492776', customer_id: '10' },
  { number: '01584781192', customer_id: '11' },
  { number: '07414561878', customer_id: '12' },
  { number: '07771992944', customer_id: '13' },
  { number: '01189787109', customer_id: '14' },
  { number: '', customer_id: '15' },
  { number: '96599967731', customer_id: '16' },
  { number: '07733241619', customer_id: '17' },
  { number: '07930469788', customer_id: '18' },
  { number: '01573410292', customer_id: '19' },
  { number: '07899894903', customer_id: '20' },
  { number: '07710317143', customer_id: '21' },
  { number: '01428708050', customer_id: '22' },
  { number: '07715273363', customer_id: '23' },
  { number: '', customer_id: '24' },
  { number: '', customer_id: '25'}
  ])

addresses = Address.create!([
  { line_1: '20, Eccleston mews', postcode: 'SW1X 8AG', city: 'London', country: 'UK', address_type: '', customer_id: 1},
  { line_1: '3, Lynwood road', postcode: 'SE28 8EE', city: 'Saltdean, Brighton', country: 'UK', address_type: '', customer_id: 2 },
  { line_1: '55, Byrom street', postcode: 'WA14 2EL', city: 'Altrincham', country: 'UK', address_type: '', customer_id: 3 },
  { line_1: '48, Bodenham road', postcode: 'HR1 2TP', city: 'Hereford', country: 'UK', address_type: '', customer_id: 4 },
  { line_1: '41, Killiams Lane', postcode: 'TA1 3YA', city: 'Taunton', country: 'UK', address_type: '', customer_id: 5 },
  { line_1: '3, Church Street', postcode: 'HP27 9AA', city: 'Princes Risborough', country: 'UK', address_type: '', customer_id: 6 },
  { line_1: '41, Canal wharf', postcode: 'PO19 8EY', city: 'Chichester', country: 'UK', address_type: '', customer_id: 7 },
  { line_1: '38, Babbington St', postcode: 'DE55 5QD', city: 'Tibshelf, Alfreton', country: 'UK', address_type: '', customer_id: 8 },
  { line_1: '16, High st', postcode: 'PE6 8EB', city: 'Market Deeping, Peterborough', country: 'UK', address_type: '', customer_id: 9 },
  { line_1: '49, Chantry rd', postcode: 'B13 8DN', city: 'Birmingham', country: 'UK', address_type: '', customer_id: 10 },
  { line_1: 'Hanley Mill', postcode: 'WR15 8QT', city: 'Tenbury Wells', country: 'UK', address_type: '', customer_id: 11 },
  { line_1: '12, Clock tower mews', postcode: 'N1 7BB', city: 'London', country: 'UK', address_type: '', customer_id: 12 },
  { line_1: 'Ladle Hill House', postcode: 'RG20 9NR', city: 'Old Burghclere, Newbury', country: 'UK', address_type: '', customer_id: 13 },
  { line_1: '3, The Chestnut, Easthampstead Rd', postcode: 'RG40 2EE', city: 'Wokingham', country: 'UK', address_type: '', customer_id: 14 },
  { line_1: '10, Upper Bank st - ( Clifford Chance 11th floor)', postcode: 'E14 5JJ', city: 'London', country: 'UK', address_type: '', customer_id: 15 },
  { line_1: 'Kuwait-Hutten-Blocky ST 15- Villa 74', postcode: '', city: 'Kuwait', country: 'Kuwait', address_type: '', customer_id: 16 },
  { line_1: '1, Swansea Terrace', postcode: 'RG31 6HJ', city: 'Reading', country: 'UK', address_type: '', customer_id: 17 },
  { line_1: '27a, Arragon rd', postcode: 'TW1 3NG', city: 'Twickenham', country: 'UK', address_type: '', customer_id: 18 },
  { line_1: 'West wing, Mellerstain House', postcode: 'TD3 6LG', city: 'Gordon', country: 'UK', address_type: '', customer_id: 19 },
  { line_1: '1, Greenfield close', postcode: 'SK22 3DG', city: 'New Mews, High Peak', country: 'UK', address_type: '', customer_id: 20 },
  { line_1: '33, Prince Albert rd, Flat 22', postcode: 'NW8 7LU', city: 'London', country: 'UK', address_type: '', customer_id: 21 },
  { line_1: 'Millicent, Lurgashall', postcode: 'GU28 9EP', city: 'Petworth', country: 'UK', address_type: '', customer_id: 22 },
  { line_1: '31a, Market place', postcode: 'DL12 8NE', city: 'Barnard Castle', country: 'UK', address_type: '', customer_id: 23 },
  { line_1: '13, Henning street', postcode: 'SW11 3DR', city: 'London', country: 'UK', address_type: '', customer_id: 24 },
  { line_1: 'Bywell Castle', postcode: 'NE43 7AB', city: 'Stocksfield', country: 'UK', address_type: '', customer_id: 25 }
  ])

courier_rates = CourierRate.create!([
  { postcode: "SE1", price: "8.5", vehicle: "bike" },
  { postcode: "SE2", price: "30.8", vehicle: "bike" },
  { postcode: "SE3", price: "19.7", vehicle: "bike" },
  { postcode: "SE4", price: "16.26", vehicle: "bike" },
  { postcode: "SE5", price: "11.52", vehicle: "bike" },
  { postcode: "SE6", price: "19.7", vehicle: "bike" },
  { postcode: "SE7", price: "21.55", vehicle: "bike" },
  { postcode: "SE8", price: "16.26", vehicle: "bike" },
  { postcode: "SE9", price: "25.25", vehicle: "bike" },
  { postcode: "SE10", price: "17.85", vehicle: "bike" },
  { postcode: "SE11", price: "8.69", vehicle: "bike" },
  { postcode: "SE12", price: "21.55", vehicle: "bike" },
  { postcode: "SE13", price: "17.85", vehicle: "bike" },
  { postcode: "SE14", price: "14.66", vehicle: "bike" },
  { postcode: "SE15", price: "13.07", vehicle: "bike" },
  { postcode: "SE16", price: "15.78", vehicle: "bike" },
  { postcode: "SE17", price: "9.97", vehicle: "bike" },
  { postcode: "SE18", price: "27.1", vehicle: "bike" },
  { postcode: "SE19", price: "16.26", vehicle: "bike" },
  { postcode: "SE20", price: "17.85", vehicle: "bike" },
  { postcode: "SE21", price: "13.07", vehicle: "bike" },
  { postcode: "SE22", price: "13.07", vehicle: "bike" },
  { postcode: "SE23", price: "16.26", vehicle: "bike" },
  { postcode: "SE24", price: "11.52", vehicle: "bike" },
  { postcode: "SE25", price: "19.7", vehicle: "bike" },
  { postcode: "SE26", price: "17.85", vehicle: "bike" },
  { postcode: "SE27", price: "14.66", vehicle: "bike" },
  { postcode: "SE28", price: "28.04", vehicle: "bike" },
  { postcode: "SE28", price: "40.04", vehicle: "car" },
  { postcode: "SE28", price: "60.00", vehicle: "small van" }
  ])
