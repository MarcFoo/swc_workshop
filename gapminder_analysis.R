# Notes from Software Carpentry Workshop
# Date: Januray 17-18, 2017

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

lifeExpectancies2007 <- gapminder$continent == "Africa" & gapminder$year == 2007
africa_2007 <- gapminder[lifeExpectancies2007, c("country", "lifeExp") ]

o <- order(africa_2007$lifeExp)

africa_2007[o, ]

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, by = country, color = continent)) + geom_point(aes(size = pop))
