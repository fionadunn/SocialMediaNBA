##BROOKLYN
bklyn1 <- get_acs(geography = "tract", variables = racevars_1, state = "NY", county = "Kings County", geometry = TRUE,
                  summary_var = "B01003_001")
head(bklyn1)

bklyn1 %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Brooklyn, NY")

##PHOENIX
phoenix <- get_acs(geography = "tract", variables = racevars_1, state = "AZ", county = "Maricopa County", geometry = TRUE,
                  summary_var = "B01003_001")

phoenix %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Phoenix, AZ")

##San Fran
SF <- get_acs(geography = "tract", variables = racevars_1, state = "CA", county = "San Francisco", geometry = TRUE,
                   summary_var = "B01003_001")

SF %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "San Francisco, CA")

### LA
LA <- get_acs(geography = "tract", variables = racevars_1, state = "CA", county = "Los Angeles", geometry = TRUE,
              summary_var = "B01003_001")

LA %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Los Angeles, CA")

##Sacramento
SAC <- get_acs(geography = "tract", variables = racevars_1, state = "CA", county = "Sacramento", geometry = TRUE,
              summary_var = "B01003_001")

SAC %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Sacramento, CA")

##Denver
den <- get_acs(geography = "tract", variables = racevars_1, state = "CO", county = "Denver", geometry = TRUE,
               summary_var = "B01003_001")

den %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Denver, CO")
##MIAMI
miami <- get_acs(geography = "tract", variables = racevars_1, state = "FL", county = "Miami-Dade", geometry = TRUE,
               summary_var = "B01003_001")

miami %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Miami, FL")

##Orlando
orl <- get_acs(geography = "tract", variables = racevars_1, state = "FL", county = "Orange", geometry = TRUE,
                 summary_var = "B01003_001")

orl %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Orlando, FL")

##Atlanta
atl <- get_acs(geography = "tract", variables = racevars_1, state = "GA", county = "Fulton", geometry = TRUE,
               summary_var = "B01003_001")

atl %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Atlanta, GA")

##Chi
chi <- get_acs(geography = "tract", variables = racevars_1, state = "IL", county = "Cook", geometry = TRUE,
               summary_var = "B01003_001")

chi %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Chicago, IL")


##indy
indy <- get_acs(geography = "tract", variables = racevars_1, state = "IN", county = "Marion", geometry = TRUE,
               summary_var = "B01003_001")

indy %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Indianapolis, IN")

##nola
nola <- get_acs(geography = "tract", variables = racevars_1, state = "LA", county = "Orleans", geometry = TRUE,
                summary_var = "B01003_001")

nola %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "New Orleans, LA")
##bos
bos <- get_acs(geography = "tract", variables = racevars_1, state = "MA", county = "Suffolk", geometry = TRUE,
                summary_var = "B01003_001")

bos %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Boston, MA")

##det
det <- get_acs(geography = "tract", variables = racevars_1, state = "MI", county = "Wayne", geometry = TRUE,
               summary_var = "B01003_001")

det %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Detroit, MI")

##minn
minn <- get_acs(geography = "tract", variables = racevars_1, state = "MN", county = "Hennepin", geometry = TRUE,
               summary_var = "B01003_001")

minn %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Minneapolis, MN")

##manhattan
man <-get_acs(geography = "tract", variables = racevars_1, state = "NY", county = "New York", geometry = TRUE,
              summary_var = "B01003_001")
man %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Manhattan, NY")


##char
char <-get_acs(geography = "tract", variables = racevars_1, state = "NC", county = "Mecklenburg", geometry = TRUE,
              summary_var = "B01003_001")
char %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Charlotte, NC")


##clev
cle <- get_acs(geography = "tract", variables = racevars_1, state = "OH", county = "Cuyahoga", geometry = TRUE,
               summary_var = "B01003_001")
char %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Cleveland, OH")

##OK
ok <-get_acs(geography = "tract", variables = racevars_1, state = "OK", county = "Oklahoma", geometry = TRUE,
             summary_var = "B01003_001")
ok %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Oklahoma, OK")

##port
port <- get_acs(geography = "tract", variables = racevars_1, state = "OR", county = "Multnomah", geometry = TRUE,
                summary_var = "B01003_001")
port %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Portland, OR")

##phil
phi <- get_acs(geography = "tract", variables = racevars_1, state = "PA", county = "Philadelphia", geometry = TRUE,
                summary_var = "B01003_001")
phi %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Philadelphia, PA")

##mem
mem <- get_acs(geography = "tract", variables = racevars_1, state = "TN", county = "Shelby", geometry = TRUE,
               summary_var = "B01003_001")
mem %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Memphis, TN")

##dtx
dtx <- get_acs(geography = "tract", variables = racevars_1, state = "TX", county = "Dallas", geometry = TRUE,
               summary_var = "B01003_001")
dtx %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Dallas, TX")

##houston
hst <- get_acs(geography = "tract", variables = racevars_1, state = "TX", county = "Harris County", geometry = TRUE,
               summary_var = "B01003_001")
hst %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Houston, TX")

##san antonio
sa <- get_acs(geography = "tract", variables = racevars_1, state = "TX", county = "Bexar County", geometry = TRUE,
               summary_var = "B01003_001")
sa %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "San Antonio, TX")

##slt

slt <- get_acs(geography = "tract", variables = racevars_1, state = "UT", county = "Salt Lake", geometry = TRUE,
              summary_var = "B01003_001")
slt %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Salt Lake City, UT")

##Milwaukee, WI
mil <- get_acs(geography = "tract", variables = racevars_1, state = "WI", county = "Milwaukee", geometry = TRUE,
               summary_var = "B01003_001")
mil %>%
  mutate(pct = 100 * (estimate / summary_est)) %>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Milwaukee, WI")

##DC
dc <- get_acs(geography = "tract", variables = racevars_1, state = "DC", county = "District of Columbia", geometry = TRUE,
               summary_var = "B01003_001")
dc %>%
  mutate(pct = 100 * (estimate / summary_est))%>%
  ggplot(aes(fill = pct)) +
  facet_wrap(~variable) +
  geom_sf(color = NA) +
  coord_sf(crs = 26915) + 
  scale_fill_viridis_c() + 
  theme_bw() + 
  labs(title = "Race Demographics",
       subtitle = "Washington D.C.")

