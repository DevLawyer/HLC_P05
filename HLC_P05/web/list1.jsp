<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.*" %>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ESA Listar1</title>
        <link rel="icon" type="image/x-icon" href="00_resources/images/esa_logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
        <link href="00_resources/css/common.css" rel='stylesheet'>      
    </head>
    
    <body>  
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark navbar-custom p-4">
                <div class="container-fluid">
                    <a href="./index.jsp">
                        <img src="00_resources/images/esa_logo.png" alt="ESA Logo" height="40" class="d-inline-block align-text-top me-4">
                    </a>
                    
                    <a class="navbar-brand mb-1" href="./index.jsp">
                        ESA Fans
                    </a>

                    <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" href="./index.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active selected" href="./list1.jsp">ESA Members Detail</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="./list2.jsp">ESA Members Complete</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>                        
        </header>
        
        <main class="container-fluid bg-main p-5">
        <%! 
            public class Member {

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getFlagImage() {
                    return flagImage;
                }

                public void setFlagImage(String flagImage) {
                    this.flagImage = flagImage;
                }

                public int getContribution() {
                    return contribution;
                }

                public void setContribution(int contribution) {
                    this.contribution = contribution;
                }

                private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                public String parseDate(GregorianCalendar cal) {
                    /**
                     * Creates a Date object with the same values as the GregorianCalendar parameter.
                     * Then, it converts it to a formatted string with SimpleDateFormat and the format() method.
                     */
                    try {
                        Date thisDate = cal.getTime();
                        return sdf.format(thisDate);
                    } catch (Exception e) {
                        // If the date cannot be formatted:
                        System.out.println(e.getMessage());
                        return null;
                    }
                }

                public String getEntryDate() {
                    return parseDate(entryDate);
                }

                public void setEntryDate(GregorianCalendar entryDate) {
                    this.entryDate = entryDate;
                }

                public Member(String name, String flagImage, int contribution, GregorianCalendar entryDate){
                    this.name = name;
                    this.flagImage = flagImage;
                    this.contribution = contribution;
                    this.entryDate = entryDate;
                }

                private String name = "";
                private String flagImage = "";
                private int contribution = 0;
                private GregorianCalendar entryDate;

            }
        %>
        <%!HashMap<Integer, Member> members = new HashMap<Integer, Member>();%>
        <%
            members.put(1, new Member("España", "spain.png", 169, new GregorianCalendar(1975,3,28)));
            members.put(2, new Member("Alemania", "germany.png", 614, new GregorianCalendar(1975,3,28)));
            members.put(3, new Member("Francia", "france.png", 778, new GregorianCalendar(1975,3,28)));
            members.put(4, new Member("Noruega", "norway.png", 33, new GregorianCalendar(1975,3,28)));
            members.put(5, new Member("Italia", "italy.png", 397, new GregorianCalendar(1975,3,28)));
            members.put(6, new Member("Irlanda", "ireland.png", 12, new GregorianCalendar(1975,3,28)));
        %>
        <div class="row d-flex justify-content-center">
            <div class="col-4">
            <%
                for(java.util.Map.Entry<Integer, Member> mem : members.entrySet()) {
                    int index = mem.getKey();
                    Member country = mem.getValue();
            %>
            <article class="card mb-4" style="width: 18rem;">
                <img src="00_resources/images/<%=country.getFlagImage()%>" class="card-img-top" alt="Flag Image">
                <div class="card-body text-center">
                    <h5 class="card-title"><%=country.getName()%></h5>
                    <form action="details.jsp">
                        <input type="hidden" value="<%=index%>" name="country"/>
                        <input type="submit" class="btn btn-primary" value="Saber Más"/>
                    </form>
                </div>
            </article>
            <%
                }
            %>
            </div>
        </div>
            
        </main>
        
        <footer class="text-center text-lg-start bg-card fg-card text-muted">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->
            
                <!-- Right -->
                <div>
                    <a href="https://www.linkedin.com/in/miguel-m-v%C3%A1zquez-mart%C3%ADnez-5b7079112/" class="me-4 text-reset">
                        <i class='bx bxl-linkedin-square'></i>
                    </a>
                    <a href="https://github.com/DevLawyer" class="me-4 text-reset">
                        <i class='bx bxl-github'></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->
        
            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                ESA Fans
                            </h6>
                            <p>
                            This website is a project to comply with the fifth practice of the HLC Module of High School El Majuelo.
                            </p>
                        </div>
                        <!-- Grid column -->
            
                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Pages
                            </h6>
                            <p>
                            <a href="./index.jsp" class="text-reset">Home</a>
                            </p>
                            <p>
                            <a href="./list1.jsp" class="text-reset">ESA Members Details</a>
                            </p>
                            <p>
                            <a href="./list2.jsp" class="text-reset">ESA Members Complete</a>
                            </p>
                        </div>
                        <!-- Grid column -->
            
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Useful links
                            </h6>
                            <p>
                            <a href="https://www.esa.int/" class="text-reset">ESA Official Website</a>
                            </p>
                            <p>
                            <a href="https://www.esa.int/Space_in_Member_States/Spain" class="text-reset">ESA Spain</a>
                            </p>
                            <p>
                            <a href="http://www.iesmajuelo.com/" class="text-reset">I.E.S. El Majuelo</a>
                            </p>
                        </div>
                        <!-- Grid column -->
            
                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                            Contact
                            </h6>
                            <p>C. Enrique Granados, 43, 41960 Gines, Sevilla</p>
                            <p>mvazmar625@g.educaand.es</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->
        
            <!-- Section: License -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            License:
            <a class="text-reset fw-bold" href="https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12">EUPL-1.2</a>
            </div>
            <!-- Section: License -->
        <!-- SCRIPTS SECTION -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
