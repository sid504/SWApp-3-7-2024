<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WSWApp.MainPages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/blogs/blog-3/assets/css/blog-3.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/facts/fact-4/assets/css/fact-4.css" />
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/tutorials/timelines/timeline-3/assets/css/timeline-3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero 4 -  -->
    <section class="bg-success">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-md-6 order-1 order-md-0 align-self-md-end">
                    <div class="row py-3 py-sm-5 py-xl-9 mt-md-10 justify-content-sm-center">
                        <div class="col-12 col-sm-10">
                            <h1 class="display-5 fw-bolder mb-4 text-white">
                                <asp:Label runat="server" ID="lblHeroHeading"></asp:Label></h1>
                            <div class="row">
                                <div class="col-12 col-xxl-8">
                                    <p class="fs-5 mb-5 text-white">
                                        <asp:Label runat="server" ID="lblHeroContext"></asp:Label>
                                    </p>
                                </div>
                            </div>
                            <div class="d-grid gap-2 d-sm-flex">
                                <asp:Button runat="server" ID="btnTradeNow" class="btn btn-warning bsb-btn-3xl rounded-pill" OnClick="btnTradeNow_Click" Text="Trade Now" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 p-0">
                    <img class="img-fluid w-100 h-100 object-fit-cover" loading="lazy" src="../Images/sandalwood 2.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <section class="py-3 py-md-5 py-xl-8">
        <div class="container">
            <div class="row justify-content-xl-center">
                <div class="col-12 col-xl-10">
                    <h2 class="h1">Investment Growth Pattern & Lock-In Period?</h2>
                    <img class="img-fluid rounded w-70 h-70 p-2 object-fit-cover justify-content-xl-center" style="width: 50%" loading="lazy" src="../Images/swmarketinsight.jpg" alt=""><span><img class="img-fluid rounded w-70 h-70 p-2 object-fit-cover justify-content-xl-center" style="width: 50%" loading="lazy" src="../Images/swmarketinsight2.jpg" alt=""></span>
                    <p class="lead fs-4 mb-3 mb-xl-5">Introduction of Sandalwood Farming Project. Sandalwood is one of tree species are the most widely accepted fragrant trees around the world. The aromatic wood retains its fragrance for decades and the wood is heavy and yellow in color. It is native to Australia and India, while the oil and wood of Indian sandalwood which is often referred as East Indian Sandalwood is highly valued in the world market. The highly valued aromatic oil, which is in yellow color is extracted from both tree wood and roots. The sandalwood odor persists in articles made of sandalwood for decades. It is an evergreen tree with slow growth rate reaching a height of about 10 to 15 m with girth size up to 1 to 2.5 m. It takes nearly 15 years for the tree to reach economic activity. The sandalwood tree grows well on various sets of environmental and climatic conditions such as altitude, rainfall, soil, and etc.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- About 2 -  -->
    <section class="py-0 py-md-5 py-xl-1">
        <div class="container">
            <div class="row gy-3 gy-md-4 gy-lg-0 align-items-lg-center">
                <div class="col-12 col-lg-6">
                    <img class="img-fluid rounded w-70 p-5 object-fit-cover justify-content-xl-center" loading="lazy" style="width: 85%" src="../Images/wswflow.jpeg" alt="">
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row justify-content-xl-center">
                        <div class="col-12 col-xl-10">
                            <h2 class="h1 mb-3">
                                <asp:Label runat="server" ID="lblWhyHeading"></asp:Label></h2>
                            <p class="lead fs-4 mb-3 mb-xl-5">
                                <asp:Label runat="server" ID="lblWhyContext"></asp:Label>
                            </p>
                            <asp:Button runat="server" ID="btnConnectNow" class="btn bsb-btn-2xl btn-outline-success rounded-pill" Text="Invest Now" OnClick="btnConnectNow_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Timeline 3 -  -->
    <section class="bsb-timeline-3 py-3 py-md-5 py-xl-2">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10 col-md-12 col-xl-10 col-xxl-9">

                    <ul class="timeline">
                        <li class="timeline-item left">
                            <div class="timeline-body">
                                <div class="timeline-content timeline-indicator">
                                    <div class="card border-0 shadow">
                                        <div class="card-body p-xl-4">
                                            <h5 class="card-subtitle text-secondary mb-1">1999</h5>
                                            <h2 class="card-title mb-3">White sandle wood</h2>
                                            <p class="card-text m-0">White sandalwood prices have been increasing steadily. The Price of the sandalwood in the year 1999 was Rs.175/- per kg,increased steadily on year 2018 - Rs.22.000/- per kg and in year 2022 it went to Rs.38,000/- per kg.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-item right">
                            <div class="timeline-body">
                                <div class="timeline-content timeline-indicator">
                                    <div class="card border-0 shadow">
                                        <div class="card-body p-xl-4">
                                            <h5 class="card-subtitle text-secondary mb-1">
                                                <asp:Label runat="server" ID="lblYearfrom"></asp:Label></h5>
                                            <h2 class="card-title mb-3">White sandle wood</h2>
                                            <p class="card-text m-0">Estimated minimum marked rate of sandalwood would be Rs.1,00,000/- per kg by 2033-2034 (*source:TTD Forest wing report)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </section>


</asp:Content>
