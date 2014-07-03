.class public final Lcom/inmobi/androidsdk/impl/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:J

.field private D:Landroid/app/Activity;

.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/location/LocationManager;

.field private m:D

.field private n:D

.field private o:D

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/inmobi/androidsdk/AdRequest;

.field private z:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Landroid/app/Activity;

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Ljava/util/Random;

    .line 83
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(D)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:D

    .line 458
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private a(J)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:J

    .line 628
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    .line 200
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 616
    if-eqz p1, :cond_0

    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 618
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(D)V

    .line 619
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(D)V

    .line 620
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(D)V

    .line 621
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(J)V

    .line 624
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    .line 128
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    .line 443
    return-void
.end method

.method private declared-synchronized b()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(D)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    .line 473
    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:I

    .line 851
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Z

    .line 503
    return-void
.end method

.method private c(D)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    .line 488
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 540
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 546
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    .line 547
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 550
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 552
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 560
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 561
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 565
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 567
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastBestKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    if-nez v0, :cond_2

    .line 572
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f()Landroid/location/Location;

    move-result-object v0

    .line 573
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 583
    :cond_3
    :goto_1
    return-void

    .line 553
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 557
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error getting the Location Info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private f()Landroid/location/Location;
    .locals 5

    .prologue
    .line 586
    .line 587
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 593
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v2

    .line 594
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 601
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 602
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 604
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_1

    .line 611
    :goto_1
    return-object v0

    .line 601
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    .line 186
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 634
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 637
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 648
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 683
    if-eqz v3, :cond_8

    .line 684
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_0

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g(Ljava/lang/String;)V

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 707
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 710
    if-eqz v3, :cond_1

    .line 711
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Ljava/lang/String;)V

    .line 714
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 717
    if-eqz v1, :cond_c

    .line 718
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 719
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 720
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 724
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 733
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(I)V

    .line 737
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_5

    .line 739
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 741
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 744
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 748
    :goto_3
    if-eqz v1, :cond_6

    .line 749
    const-string v2, "LTVID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_6
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/uid/UID;->getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 757
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/content/Context;)V

    .line 760
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d(Ljava/lang/String;)V

    .line 764
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getCurrentOrientationInFixedValues(Landroid/app/Activity;)I

    move-result v0

    .line 766
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 767
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 780
    :goto_4
    return-void

    .line 691
    :cond_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.language"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "user.region"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    :goto_5
    if-nez v0, :cond_0

    .line 699
    const-string v0, "en"

    goto/16 :goto_0

    .line 745
    :catch_0
    move-exception v1

    .line 746
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v4, "LTVID not available yet in configs"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_3

    .line 768
    :cond_9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 769
    const/4 v0, 0x4

    :try_start_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 775
    :catch_1
    move-exception v0

    .line 776
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error getting the orientation info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 770
    :cond_a
    if-nez v0, :cond_b

    .line 771
    const/4 v0, 0x3

    :try_start_4
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V

    goto :goto_4

    .line 773
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 726
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_1

    :cond_d
    move-object v0, v3

    goto :goto_5
.end method

.method private h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    .line 246
    return-void
.end method

.method private i()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Landroid/app/Activity;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    .line 274
    return-void
.end method


# virtual methods
.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAge()I

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Landroid/content/Context;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method

.method public getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeoTS()J
    .locals 2

    .prologue
    .line 854
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:J

    return-wide v0
.end method

.method public getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getIncome()I

    move-result v0

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    return-wide v0
.end method

.method public getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getODINId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:I

    return v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 507
    const-string v0, ""

    .line 509
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsakeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getRSAKeyVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Z

    return v0
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    .line 804
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    .line 792
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    .line 800
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    .line 836
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    .line 828
    return-void
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 515
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h()V

    .line 516
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->i(Ljava/lang/String;)V

    .line 518
    if-eqz p2, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 520
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 523
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g()V

    .line 526
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 532
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
