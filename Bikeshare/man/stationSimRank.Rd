\name{stationSimRank}
\alias{stationSimRank}

\title{
  Function to compute SimRank of a station given usage data
}
\description{
  SimRank, a variant of the Google PageRank, measures the similarity
  between stations in the bikeshare system.  Approximates the
  probability that a random biker would end up at any of the stations in
  the map if it traversed the system proportional to usage.
}
\usage{
stationSimRank(bikeshareData, station,tripSubset=TRUE, beta = 0.8, errorTol = 1e-04)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{bikeshareData}{
    BikeshareData object
}
  \item{station}{
    ID of the particular bikeshare station
  }
  \item{tripSubset}{
    Subset information for trip data
  }
  \item{beta}{
    Parameter to describe how often random walk resets
  }
  \item{errorTol}{
    Desired accuracy of SimRank vecotr
  }
}

\references{
http://www.stanford.edu/class/cs246/slides/10-spam.pdf
}
\author{
John Sears
}

\examples{
\dontrun{
stations = readStationData(system.file("extData/bikeStations.xml", package="Bikeshare"),.cities()$WAS)
bikeshareData = readTripData(system.file("extData/2010-4th-quarter.csv", package="Bikeshare"), .cities()$WAS, stations)
ranks = stationSimRank(bikeshareData, 31074)
}
}

% R documentation directory.
\keyword{graphs}

