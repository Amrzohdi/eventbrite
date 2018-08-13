Venue.destroy_all
Event.destroy_all
User.destroy_all

User.create(email: "example@gmail.com", password: "asdasd123")

venues =
    [
        {name: "Sempang Airport", longitude: 101.69958114624023, latitude: 3.1108628662737186},
        {name: "Universiti Kebangsaan Malaysia Medical Centre", longitude: 101.72550201416016, latitude: 3.0992070295877383},
        {name: "Thean Hou Temple", longitude: 101.72550201416016, latitude: 3.0992070295877383},
        {name: "Kelab Golf Perkhidmatan Awam", longitude: 101.64379119873047, latitude: 3.1312602700964733},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
        {name: "Putra World Trade Center", longitude: 101.69168472290039, latitude: 3.1682831124487123},
    ]


[
    {name: "International Conference on Network", description: "All papers will be published in the International Conference Proceedings, which will be indexed by Ei Compendex and Scopus and submitted to be reviewed by Thomson Reuters Conference Proceedings Citation Index (ISI Web of Science).",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Strengthening the Supply Chain", description: "MINAS is a biennial aerospace symposium organised by Majlis Amanah Rakyat (MARA - an agency of the Government of Malaysia) and National Aerospace Industry Coordination Office (NAICO – an agency under MITI).",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"),user_id: User.first.id
    },
    {name: "Talent Ecosystem Conference 2018", description: "Understanding and improving the employee experience is critical for companies operating in a highly competitive global economy. Providing an engaging experience will help companies succeed in attracting and retaining skilled employees that can significantly.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Great Eastern Viper Arena KL 2018", description: "Set to take place at National Stadium, KL Sports City (formerly known as Bukit Jalil National Sports Complex), the Great Eastern Viper Arena KL will light up the night of 18th of August 2018 as thousands of fitness enthusiasts rise up to the Challenge.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    },
    {name: "Malaysia Business Expo 2018", description: "Malaysia Business Expo - Largest Business To Business showcase in Malaysia. MBEX 2018 focus all exhibitor & visitor just business segment only. This event target showcase 200 exhibitors offer support, opportunity & solutions for business & entrepreneurship.",
     start_date: DateTime.parse("Tue, Apr 9, 2019, 8:00 AM"), end_date: DateTime.parse("Fri, Apr 12, 2019, 6:00 PM"), user_id: User.first.id
    }
].each_with_index do |event, idx|
  Event.create(event.merge(venue_attributes: venues[idx]))
end
