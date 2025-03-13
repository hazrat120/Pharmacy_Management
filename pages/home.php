<main class="app-main">
<div class="grey-bg container-fluid">
  <section id="minimal-statistics">
    <div class="row">
      <div class="col-12 mt-3 mb-1">
        <h4 class="text-uppercase">Dashboard</h4>
      </div>
    </div>
      <div class="row">
        <!-- Sales Overview Card -->
        <div class="col-xl-4 col-sm-6 col-12 mb-4 px-3">
            <div class="card h-100 border-0 shadow-sm hover-shadow-lg transition-all-hover">
                <div class="card-header bg-info-subtle border-0 py-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-info text-white d-flex align-items-center justify-content-center" 
                            style="width: 40px; height: 40px; border-radius: 50%;">
                            <i class="bi bi-cash-coin fs-5" style="width: 20px; height: 20px;"></i>
                        </div>
                        <h6 class="mb-0 text-info-emphasis fw-semibold ms-2">Sales Overview</h6>
                    </div>
                </div>
                
                <div class="card-body pt-0">
                    <div class="d-flex justify-content-between align-items-end">
                        <div>
                            <h2 class="text-info-emphasis fw-bold mb-0">6,990</h2>
                            <span class="text-muted small">Total taka</span>
                        </div>
                        <div class="text-end">
                            <div class="badge bg-success-subtle text-success-emphasis">
                                <i class="bi bi-arrow-up-short"></i> 12.5%
                            </div>
                            <p class="text-muted small mb-0 mt-1">Last 7 days</p>
                        </div>
                    </div>
                    <div class="progress mt-4" style="height: 6px;">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%"></div>
                    </div>
                </div>
                <div class="card-footer bg-transparent border-0 pt-0">
                    <a href="sell_list.php" 
                        class="btn btn-sm btn-info w-100 d-flex justify-content-between align-items-center">
                        <span>View Details</span>
                        <i class="bi bi-arrow-right-short fs-5"></i>
                    </a>
                </div>
            </div>
        </div>

        <!-- Total Purchase Card -->
        <div class="col-xl-4 col-sm-6 col-12 mb-4 px-3">
            <div class="card h-100 border-0 shadow-sm hover-shadow-lg transition-all-hover">
                <div class="card-header bg-info-subtle border-0 py-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-info text-white d-flex align-items-center justify-content-center" 
                            style="width: 40px; height: 40px; border-radius: 50%;">
                            <i class="bi bi-cash-coin fs-5" style="width: 20px; height: 20px;"></i>
                        </div>
                        <h6 class="mb-0 text-info-emphasis fw-semibold ms-2">Total Purchase</h6>
                    </div>
                </div>
                <div class="card-body pt-0">
                    <div class="d-flex justify-content-between align-items-end">
                        <div>
                            <h2 class="text-info-emphasis fw-bold mb-0">
                                <?php
                                $amount2 = 0;
                                $purchaselist = $db->query("SELECT * FROM total_purchase");
                                while(list($_id, $singleSell, $date) = $purchaselist->fetch_row()) {
                                    $amount2 += (int)$singleSell;
                                }
                                echo $amount2;
                                ?>
                            </h2>
                            <span class="text-muted small">Total taka</span>
                        </div>
                        <div class="text-end">
                            <div class="badge bg-success-subtle text-success-emphasis">
                                <i class="bi bi-arrow-up-short"></i> N/A
                            </div>
                            <p class="text-muted small mb-0 mt-1">All Time</p>
                        </div>
                    </div>
                    <div class="progress mt-4" style="height: 6px;">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%"></div>
                    </div>
                </div>
                <div class="card-footer bg-transparent border-0 pt-0">
                    <a href="purchase_list.php" 
                        class="btn btn-sm btn-info w-100 d-flex justify-content-between align-items-center">
                        <span>View Details</span>
                        <i class="bi bi-arrow-right-short fs-5"></i>
                    </a>
                </div>
            </div>
        </div>

        <!-- Today's Sales Card -->
        <div class="col-xl-4 col-sm-6 col-12 mb-4 px-3">
            <div class="card h-100 border-0 shadow-sm hover-shadow-lg transition-all-hover">
                <div class="card-header bg-info-subtle border-0 py-3">
                    <div class="d-flex align-items-center">
                        <div class="bg-info text-white d-flex align-items-center justify-content-center" 
                            style="width: 40px; height: 40px; border-radius: 50%;">
                            <i class="bi bi-calendar3 fs-5" style="width: 20px; height: 20px; display: flex; align-items: center; justify-content: center;"></i>
                        </div>
                        <h6 class="mb-0 text-info-emphasis fw-semibold ms-2">Today's Sales</h6>
                    </div>
                </div>
                <div class="card-body pt-0">
                    <div class="d-flex justify-content-between align-items-end">
                        <div>
                            <h2 class="text-info-emphasis fw-bold mb-0">
                                <?php
                                $today = date('Y-m-d');
                                $todayAmount = 0;
                                $selllist = $db->query("SELECT * FROM total_sell WHERE date = '$today'");
                                while(list($_id, $singleSell, $date) = $selllist->fetch_row()) {
                                    $todayAmount += (int)$singleSell;
                                }
                                echo $todayAmount;
                                ?>
                            </h2>
                            <span class="text-muted small">Today's taka</span>
                        </div>
                        <div class="text-end">
                            <div class="badge bg-success-subtle text-success-emphasis">
                                <i class="bi bi-arrow-up-short"></i> N/A
                            </div>
                            <p class="text-muted small mb-0 mt-1">Daily Update</p>
                        </div>
                    </div>
                    <div class="progress mt-4" style="height: 6px;">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%"></div>
                    </div>
                </div>
                <div class="card-footer bg-transparent border-0 pt-0">
                    <a href="today_sell_list.php" 
                        class="btn btn-sm btn-info w-100 d-flex justify-content-between align-items-center">
                        <span>View Details</span>
                        <i class="bi bi-arrow-right-short fs-5"></i>
                    </a>
                </div>
            </div>
        </div>
      </div>
  </section>

  <section class="my-5">
  <div class="row g-4">
    <!-- Total Medicine Card -->
    <div class="col-xl-4 col-sm-6 col-12">
      <div class="d-flex justify-content-around align-items-center p-4 border border-3 border-success rounded-4 shadow-lg bg-light">
        <div class="border border-2 border-success rounded-circle p-3 bg-white shadow">
          <i class="bi bi-capsule-pill fs-1 text-success"></i>
        </div>
        <div class="d-flex flex-column align-items-center">
          <?php 
          $result = $db->query("SELECT COUNT(*) AS total FROM medicines");
          $totalMedicines = $result ? $result->fetch_assoc()['total'] : 0;
          ?>
          <h4 class="fw-semibold mb-3">Total Medicine</h4>
          <h2 class="text-success mb-3"><?= htmlspecialchars($totalMedicines) ?></h2>
          <a href="medicine_list.php" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
            Show Details
          </a>
        </div>
      </div>
    </div>

    <!-- Out of Stock Card -->
    <div class="col-xl-4 col-sm-6 col-12">
      <div class="d-flex justify-content-around align-items-center p-4 border border-3 border-warning rounded-4 shadow-lg bg-light">
        <div class="border border-2 border-warning rounded-circle p-3 bg-white shadow">
          <i class="bi bi-cart-x fs-1 text-warning"></i>
        </div>
        <div class="d-flex flex-column align-items-center">
          <?php 
          $result = $db->query("SELECT * FROM medicine_stock WHERE quantity = 0");
          $out_of_stock_count = $result ? $result->num_rows : 0;
          ?>
          <h4 class="fw-semibold mb-3">Out of Stock</h4>
          <h2 class="text-warning mb-3"><?= htmlspecialchars($out_of_stock_count) ?></h2>
          <a href="stock_out_medicines.php" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
            Show Details
          </a>
        </div>
      </div>
    </div>

    <!-- Expired Medicine Card -->
    <div class="col-xl-4 col-sm-6 col-12">
      <div class="d-flex justify-content-around align-items-center p-4 border border-3 border-danger rounded-4 shadow-lg bg-light">
        <div class="border border-2 border-danger rounded-circle p-3 bg-white shadow">
          <i class="bi bi-exclamation-triangle fs-1 text-danger"></i>
        </div>
        <div class="d-flex flex-column align-items-center">
          <?php 
          $result = $db->query("SELECT COUNT(*) AS total FROM expired_medicines");
          $totalMedicines3 = $result ? $result->fetch_assoc()['total'] : 0;
          ?>
          <h4 class="fw-semibold mb-3">Expired Medicine</h4>
          <h2 class="text-danger mb-3"><?= htmlspecialchars($totalMedicines3) ?></h2>
          <a href="expired_medicines.php" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
            Show Details
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="my-5">
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8">
            <div class="card border-success shadow-lg">
                <div class="card-header bg-success text-white">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0 fw-semibold">
                            <i class="bi bi-file-earmark-bar-graph me-2"></i>
                            Today's Sell Report
                        </h5>
                        <span class="badge bg-light text-success">
                            <?= date('M j, Y') ?>
                        </span>
                    </div>
                </div>
                
                <div class="card-body">
                    <?php
                    $today = date('Y-m-d');
                    $todayAmount2 = 0;
                    $todayPurchase = 0;
                    
                    $selllist = $db->query("SELECT * FROM total_sell WHERE date = '$today'");
                    $purchaselist = $db->query("SELECT * FROM total_purchase WHERE date = '$today'");

                    while (list($_id, $singleSell, $date) = $purchaselist->fetch_row()) {
                        $todayPurchase += (int)$singleSell; 
                    }

                    while (list($_id, $singleSell, $date) = $selllist->fetch_row()) {
                        $todayAmount2 += (int)$singleSell; 
                    }
                    ?>

                    <div class="table-responsive">
                        <table class="table table-hover table-bordered align-middle">
                            <thead class="table-success">
                                <tr>
                                    <th scope="col">Report Type</th>
                                    <th scope="col" class="text-end">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="hover-shadow">
                                    <td>Today's Sell</td>
                                    <td class="text-end fw-bold text-success">
                                        <?= $todayAmount2 ?> Taka
                                    </td>
                                </tr>
                                <tr class="hover-shadow">
                                    <td>Purchase</td>
                                    <td class="text-end fw-bold text-danger">
                                        <?= $todayPurchase ?> Taka
                                    </td>
                                </tr>
                                <tr class="hover-shadow">
                                    <td>Cash Received</td>
                                    <td class="text-end fw-bold text-primary">
                                        <?= $todayAmount2 ?> Taka
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card-footer bg-light">
                    <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted">Last updated: <?= date('h:i A') ?></small>
                        <a href="reports.php" class="btn btn-success btn-sm">
                            <i class="bi bi-arrow-right me-1"></i>View Details
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</div>
</main>