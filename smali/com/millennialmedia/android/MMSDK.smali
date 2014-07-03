.class public final Lcom/millennialmedia/android/MMSDK;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMSDK$Event;
    }
.end annotation


# static fields
.field private static final BASE_URL_TRACK_EVENT:Ljava/lang/String; = "http://ads.mp.mydas.mobi/pixel?id="

.field static final CACHE_REQUEST_TIMEOUT:I = 0x7530

.field static final CLOSE_ACTIVITY_DURATION:I = 0x190

.field static COMMA:Ljava/lang/String; = null

.field public static final DEFAULT_APID:Ljava/lang/String; = "28911"

.field public static final DEFAULT_BANNER_APID:Ljava/lang/String; = "28913"

.field public static final DEFAULT_RECT_APID:Ljava/lang/String; = "28914"

.field static final EMPTY:Ljava/lang/String; = ""

.field static final HANDSHAKE_REQUEST_TIMEOUT:I = 0xbb8

.field static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss ZZZZ"

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x0

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_INTERNAL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_LEVEL_PRIVATE_VERBOSE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_LEVEL_VERBOSE:I = 0x3

.field static final OPEN_ACTIVITY_DURATION:I = 0x258

.field static final PREFS_NAME:Ljava/lang/String; = "MillennialMediaSettings"

.field static final REQUEST_TIMEOUT:I = 0x2710

.field public static final SDKLOG:Ljava/lang/String; = "MMSDK"

.field public static final VERSION:Ljava/lang/String; = "5.2.0-c11d39dc.a"

.field static disableAdMinRefresh:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static getMMdidValue:Ljava/lang/String;

.field private static hasSpeechKit:Z

.field private static isBroadcastingEvents:Z

.field static logLevel:I

.field static macId:Ljava/lang/String;

.field static mainHandler:Landroid/os/Handler;

.field private static nextDefaultId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    sput-boolean v2, Lcom/millennialmedia/android/MMSDK;->disableAdMinRefresh:Z

    .line 119
    const v0, 0x711e41a1

    sput v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    .line 153
    const-string v0, ","

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    .line 527
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    .line 680
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;

    .line 1191
    sput-boolean v2, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z

    .line 1194
    :try_start_0
    const-string v0, "nmsp_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    return v0
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .parameter "ba"

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 725
    .local v0, hex:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 726
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static checkActivity(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 793
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.millennialmedia.android.MMActivity"

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 795
    .local v0, cn:Landroid/content/ComponentName;
    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v1

    .line 797
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MMSDK"

    const-string v4, "Activity MMActivity not declared in AndroidManifest.xml"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 799
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 800
    const-string v3, "MMActivity class"

    invoke-static {p0, v3}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 751
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 752
    const-string v0, "INTERNET permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 756
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 758
    const-string v0, "ACCESS_NETWORK_STATE permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMSDK;->createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 761
    :cond_1
    return-void
.end method

.method private static createMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "permission"

    .prologue
    .line 766
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 767
    .local v0, dialog:Landroid/app/AlertDialog;
    const-string v1, "Whoops!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 768
    const-string v1, "The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 773
    const/4 v1, -0x3

    const-string v2, "OK"

    new-instance v3, Lcom/millennialmedia/android/MMSDK$1;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMSDK$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 782
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 783
    return-object v0
.end method

.method static getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;
    .locals 1
    .parameter "adInfo"

    .prologue
    .line 1026
    if-nez p0, :cond_0

    .line 1027
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getAdvertisingInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4
    .parameter "context"

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1037
    .local v0, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, e:Ljava/io/IOException;
    const-string v2, "MMSDK"

    const-string v3, "Unrecoverable error connecting to Google Play services (e.g.,the old version of the service doesnt support getting AdvertisingId"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1042
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1043
    .local v1, e:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const-string v2, "MMSDK"

    const-string v3, "Google Play services is not available entirely."

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1045
    .end local v1           #e:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v1

    .line 1046
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "MMSDK"

    const-string v3, "IllegalStateException: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1047
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 1048
    .local v1, e:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    const-string v2, "MMSDK"

    const-string v3, "Google Play Services is not installed, up-to-date, or enabled"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getBroadcastEvents()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    return v0
.end method

.method static getCn(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 855
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 857
    .local v0, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "context"

    .prologue
    .line 843
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 608
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 610
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 611
    const-string v0, "unknown"

    .line 677
    :goto_0
    return-object v0

    .line 614
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 616
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 617
    .local v3, type:I
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 618
    .local v2, subType:I
    if-ne v3, v5, :cond_1

    .line 619
    const-string v0, "wifi"

    .local v0, connectionType:Ljava/lang/String;
    goto :goto_0

    .line 620
    .end local v0           #connectionType:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 621
    packed-switch v2, :pswitch_data_0

    .line 668
    const-string v0, "unknown"

    .line 669
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 623
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_0
    const-string v0, "1xrtt"

    .line 624
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 626
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_1
    const-string v0, "cdma"

    .line 627
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 629
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_2
    const-string v0, "edge"

    .line 630
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_3
    const-string v0, "ehrpd"

    .line 633
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 635
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_4
    const-string v0, "evdo_0"

    .line 636
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 638
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_5
    const-string v0, "evdo_a"

    .line 639
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 641
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_6
    const-string v0, "evdo_b"

    .line 642
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 644
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_7
    const-string v0, "gprs"

    .line 645
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 647
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_8
    const-string v0, "hsdpa"

    .line 648
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 650
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_9
    const-string v0, "hspa"

    .line 651
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 653
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_a
    const-string v0, "hspap"

    .line 654
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 656
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_b
    const-string v0, "hsupa"

    .line 657
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 659
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_c
    const-string v0, "iden"

    .line 660
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 662
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_d
    const-string v0, "lte"

    .line 663
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 665
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_e
    const-string v0, "umts"

    .line 666
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v0           #connectionType:Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 675
    .end local v0           #connectionType:Ljava/lang/String;
    .end local v2           #subType:I
    .end local v3           #type:I
    :cond_3
    const-string v0, "offline"

    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getDefaultAdId()I
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v1

    .line 124
    :try_start_0
    sget v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/millennialmedia/android/MMSDK;->nextDefaultId:I

    monitor-exit v1

    return v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getDensity(Landroid/content/Context;)F
    .locals 2
    .parameter "context"

    .prologue
    .line 742
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 743
    .local v0, metrics:Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 744
    const/high16 v1, 0x3f80

    .line 746
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private static getDensityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 736
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 737
    .local v0, density:F
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getDpiHeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1087
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->needsRawDisplayMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    const-string v2, "getRawHeight"

    invoke-static {p0, v2}, Lcom/millennialmedia/android/MMSDK;->getRawSize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, height:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    .end local v0           #height:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1094
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1095
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->getDpiHeightFrom(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDpiHeightFrom(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1
    .parameter "metrics"

    .prologue
    .line 1128
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDpiWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1058
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->needsRawDisplayMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    const-string v2, "getRawWidth"

    invoke-static {p0, v2}, Lcom/millennialmedia/android/MMSDK;->getRawSize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, width:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1066
    .end local v1           #width:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1065
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1066
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getDpiWidthFrom(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDpiWidthFrom(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1
    .parameter "metrics"

    .prologue
    .line 1133
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    .line 563
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v7, ips:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 565
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 566
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 567
    .local v6, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 568
    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 569
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 570
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 571
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 572
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, inetAddressHost:Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    .line 580
    .local v8, isIPv4:Z
    if-eqz v8, :cond_3

    .line 581
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #inetAddressHost:Ljava/lang/String;
    .end local v6           #intf:Ljava/net/NetworkInterface;
    .end local v7           #ips:Ljava/lang/StringBuilder;
    .end local v8           #isIPv4:Z
    :catch_0
    move-exception v3

    .line 597
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "MMSDK"

    const-string v11, "Exception getting ip information: "

    invoke-static {v10, v11, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    const-string v10, ""

    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    return-object v10

    .line 583
    .restart local v1       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v2       #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v4       #inetAddress:Ljava/net/InetAddress;
    .restart local v5       #inetAddressHost:Ljava/lang/String;
    .restart local v6       #intf:Ljava/net/NetworkInterface;
    .restart local v7       #ips:Ljava/lang/StringBuilder;
    .restart local v8       #isIPv4:Z
    :cond_3
    const/16 v10, 0x25

    :try_start_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 587
    .local v0, delim:I
    if-gez v0, :cond_4

    move-object v9, v5

    .line 589
    .local v9, noInterfaceNameAddress:Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 587
    .end local v9           #noInterfaceNameAddress:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 595
    .end local v0           #delim:I
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #inetAddressHost:Ljava/lang/String;
    .end local v6           #intf:Ljava/net/NetworkInterface;
    .end local v8           #isIPv4:Z
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/millennialmedia/android/MMLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static declared-synchronized getMMdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 689
    const-class v6, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 690
    sget-object v5, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 693
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, mmdid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "mmh_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .local v4, mmdidBuilder:Ljava/lang/StringBuilder;
    :try_start_2
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 703
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 704
    .local v1, hashBytes:[B
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 708
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 709
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 689
    .end local v1           #hashBytes:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v3           #mmdid:Ljava/lang/String;
    .end local v4           #mmdidBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 710
    .restart local v3       #mmdid:Ljava/lang/String;
    .restart local v4       #mmdidBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v7, "MMSDK"

    const-string v8, "Exception calculating hash: "

    invoke-static {v7, v8, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, networkOperator:Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 818
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v2, :cond_0

    .line 819
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 820
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 821
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 824
    :goto_0
    return-object v2

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getMediaVolume(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1232
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    return v1
.end method

.method static getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 6
    .parameter "context"

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1073
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->needsRealDisplayMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    :try_start_0
    const-class v3, Landroid/view/Display;

    const-string v4, "getRealMetrics"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1077
    .local v1, getRealMetrics:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v1           #getRealMetrics:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v2

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MMSDK"

    const-string v4, "Error calling getRealMetrics"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, networkOperator:Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 832
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v2, :cond_0

    .line 833
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 835
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 838
    :goto_0
    return-object v2

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 848
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 850
    .local v0, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 1344
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1338
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 1340
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 1342
    :pswitch_2
    const-string v0, "square"

    goto :goto_0

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static final getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    goto :goto_0
.end method

.method private static getRawSize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "functionName"

    .prologue
    .line 1100
    const/4 v5, 0x0

    .line 1101
    .local v5, size:Ljava/lang/String;
    instance-of v6, p0, Landroid/app/Activity;

    if-eqz v6, :cond_0

    move-object v0, p0

    .line 1102
    check-cast v0, Landroid/app/Activity;

    .line 1103
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1105
    .local v1, display:Landroid/view/Display;
    :try_start_0
    const-class v6, Landroid/view/Display;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, p1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1106
    .local v3, mGetRawSize:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1107
    .local v4, rawSize:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1112
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #display:Landroid/view/Display;
    .end local v3           #mGetRawSize:Ljava/lang/reflect/Method;
    .end local v4           #rawSize:I
    :cond_0
    :goto_0
    return-object v5

    .line 1108
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #display:Landroid/view/Display;
    :catch_0
    move-exception v2

    .line 1109
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "MMSDK"

    const-string v7, "error with getRawSize: "

    invoke-static {v6, v7, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getSupportsSms(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1323
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getSupportsTel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1330
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static hasMicrophone(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static hasRecordAudioPermission(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1224
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasSetTranslationMethod()Z
    .locals 2

    .prologue
    .line 1361
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasSpeechKit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1202
    sget-boolean v0, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "true"

    .line 1205
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1211
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 1212
    .local v0, handShake:Lcom/millennialmedia/android/HandShake;
    invoke-virtual {v0}, Lcom/millennialmedia/android/HandShake;->sendInitRequest()V

    .line 1213
    invoke-virtual {v0}, Lcom/millennialmedia/android/HandShake;->startSession()V

    .line 1214
    return-void
.end method

.method static insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V
    .locals 29
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "MMSDK"

    const-string v26, "executing getIDThread"

    invoke-static/range {v25 .. v26}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v25, "density"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDensityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v25, "hpx"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v25, "wpx"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v25, "sk"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->hasSpeechKit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v25, "mic"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->hasMicrophone(Landroid/content/Context;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const/4 v3, 0x0

    .line 891
    .local v3, aaidValue:Ljava/lang/String;
    const-string v5, "true"

    .line 893
    .local v5, ateValue:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v25

    if-nez v25, :cond_0

    .line 894
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getAdvertisingInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v12

    .line 896
    .local v12, info:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    if-eqz v12, :cond_0

    .line 897
    invoke-static {v12}, Lcom/millennialmedia/android/MMSDK;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v3

    .line 899
    if-eqz v3, :cond_0

    invoke-virtual {v12}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 900
    const-string v5, "false"

    .line 905
    .end local v12           #info:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_0
    if-eqz v3, :cond_e

    .line 906
    const-string v25, "aaid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v25, "ate"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->isCachedVideoSupportedOnDevice(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 919
    const-string v25, "cachedvideo"

    const-string v26, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :goto_1
    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v25, :cond_2

    .line 925
    const-string v25, "dm"

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    :cond_2
    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v25, :cond_3

    .line 928
    const-string v25, "dv"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Android"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_3
    const-string v25, "sdkversion"

    const-string v26, "5.2.0-c11d39dc.a"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v25, "mcc"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v25, "mnc"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getCn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, cn:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 937
    const-string v25, "cn"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    .line 941
    .local v16, locale:Ljava/util/Locale;
    if-eqz v16, :cond_5

    .line 942
    const-string v25, "language"

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v25, "country"

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 948
    .local v18, pkid:Ljava/lang/String;
    const-string v25, "pkid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 950
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 951
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    const-string v25, "pknm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pkid:Ljava/lang/String;
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HandShake;->getSchemesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 958
    .local v22, schemes:Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 959
    const-string v25, "appsids"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 963
    .local v24, vid:Ljava/lang/String;
    if-eqz v24, :cond_7

    .line 964
    const-string v25, "vid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :cond_7
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 974
    .local v7, connectionType:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 975
    new-instance v23, Landroid/os/StatFs;

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 980
    .local v23, stat:Landroid/os/StatFs;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSize()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    mul-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 984
    .local v11, freeSpace:Ljava/lang/String;
    const/4 v9, 0x0

    .line 985
    .local v9, devicePluggedIn:Ljava/lang/String;
    const/4 v8, 0x0

    .line 986
    .local v8, deviceBatteryLevel:Ljava/lang/String;
    const/16 v25, 0x0

    new-instance v26, Landroid/content/IntentFilter;

    const-string v27, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v26 .. v27}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v13

    .line 988
    .local v13, intent:Landroid/content/Intent;
    if-eqz v13, :cond_8

    .line 991
    const-string v25, "plugged"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    if-nez v25, :cond_11

    const-string v9, "false"

    .line 993
    :goto_4
    const-string v25, "scale"

    const/16 v26, 0x64

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 994
    .local v21, scale:I
    const/high16 v25, 0x42c8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v20, v25, v26

    .line 995
    .local v20, ratio:F
    const-string v25, "level"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v15, v0

    .line 996
    .local v15, level:I
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 999
    .end local v15           #level:I
    .end local v20           #ratio:F
    .end local v21           #scale:I
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_9

    .line 1001
    const-string v25, "bl"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    .line 1004
    const-string v25, "plugged"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_b

    .line 1007
    const-string v25, "space"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_b
    if-eqz v7, :cond_c

    .line 1010
    const-string v25, "conn"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1013
    .local v14, ip:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 1014
    const-string v25, "pip"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1021
    .end local v7           #connectionType:Ljava/lang/String;
    .end local v8           #deviceBatteryLevel:Ljava/lang/String;
    .end local v9           #devicePluggedIn:Ljava/lang/String;
    .end local v11           #freeSpace:Ljava/lang/String;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #ip:Ljava/lang/String;
    .end local v23           #stat:Landroid/os/StatFs;
    :cond_d
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/millennialmedia/android/MMRequest;->insertLocation(Ljava/util/Map;)V

    .line 1022
    return-void

    .line 910
    .end local v6           #cn:Ljava/lang/String;
    .end local v16           #locale:Ljava/util/Locale;
    .end local v22           #schemes:Ljava/lang/String;
    .end local v24           #vid:Ljava/lang/String;
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 912
    .local v17, mmdid:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 913
    const-string v25, "mmdid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 921
    .end local v17           #mmdid:Ljava/lang/String;
    :cond_f
    const-string v25, "cachedvideo"

    const-string v26, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 952
    .restart local v6       #cn:Ljava/lang/String;
    .restart local v16       #locale:Ljava/util/Locale;
    :catch_0
    move-exception v10

    .line 953
    .local v10, e:Ljava/lang/Exception;
    const-string v25, "MMSDK"

    const-string v26, "Can\'t insert package information"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 978
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #connectionType:Ljava/lang/String;
    .restart local v22       #schemes:Ljava/lang/String;
    .restart local v24       #vid:Ljava/lang/String;
    :cond_10
    :try_start_2
    new-instance v23, Landroid/os/StatFs;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .restart local v23       #stat:Landroid/os/StatFs;
    goto/16 :goto_3

    .line 991
    .restart local v8       #deviceBatteryLevel:Ljava/lang/String;
    .restart local v9       #devicePluggedIn:Ljava/lang/String;
    .restart local v11       #freeSpace:Ljava/lang/String;
    .restart local v13       #intent:Landroid/content/Intent;
    :cond_11
    const-string v9, "true"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1016
    .end local v7           #connectionType:Ljava/lang/String;
    .end local v8           #deviceBatteryLevel:Ljava/lang/String;
    .end local v9           #devicePluggedIn:Ljava/lang/String;
    .end local v11           #freeSpace:Ljava/lang/String;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v23           #stat:Landroid/os/StatFs;
    :catch_1
    move-exception v10

    .line 1017
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v25, "MMSDK"

    const-string v26, "Exception inserting common parameters: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static isCachedVideoSupportedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 807
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 553
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 556
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static isUiThread()Z
    .locals 2

    .prologue
    .line 545
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needsRawDisplayMethod()Z
    .locals 2

    .prologue
    .line 1117
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needsRealDisplayMethod()Z
    .locals 2

    .prologue
    .line 1123
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static printDiagnostics(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 9
    .parameter "adImpl"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1237
    if-nez p0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1243
    .local v0, context:Landroid/content/Context;
    const-string v1, "MMSDK"

    const-string v2, "MMAd External ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v1, "MMSDK"

    const-string v2, "MMAd Internal ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v1, "MMSDK"

    const-string v2, "APID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v2, "MMSDK"

    const-string v3, "SD card is %savailable."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    if-eqz v0, :cond_0

    .line 1252
    const-string v1, "MMSDK"

    const-string v2, "Package: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v1, "MMSDK"

    const-string v2, "MMDID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v1, "MMSDK"

    const-string v2, "Permissions:"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_3

    const-string v1, "not "

    :goto_2
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v2, "MMSDK"

    const-string v3, "android.permission.INTERNET is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_4

    const-string v1, "not "

    :goto_3
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v2, "MMSDK"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_5

    const-string v1, "not "

    :goto_4
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v2, "MMSDK"

    const-string v3, "android.permission.VIBRATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_6

    const-string v1, "not "

    :goto_5
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_7

    const-string v1, "not "

    :goto_6
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_8

    const-string v1, "not "

    :goto_7
    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v1, "MMSDK"

    const-string v2, "Cached Ads:"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const/4 v1, 0x2

    new-instance v2, Lcom/millennialmedia/android/MMSDK$2;

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/MMSDK$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    goto/16 :goto_0

    .line 1247
    :cond_2
    const-string v1, "not "

    goto/16 :goto_1

    .line 1257
    :cond_3
    const-string v1, ""

    goto/16 :goto_2

    .line 1263
    :cond_4
    const-string v1, ""

    goto/16 :goto_3

    .line 1269
    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 1275
    :cond_6
    const-string v1, ""

    goto :goto_5

    .line 1281
    :cond_7
    const-string v1, ""

    goto :goto_6

    .line 1287
    :cond_8
    const-string v1, ""

    goto :goto_7
.end method

.method static removeAccelForJira1164()Z
    .locals 2

    .prologue
    .line 1356
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetCache(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->resetCache(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 531
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 540
    sget-object v0, Lcom/millennialmedia/android/MMSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    return-void
.end method

.method public static setBroadcastEvents(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 174
    sput-boolean p0, Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z

    .line 175
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .parameter "level"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x4

    .line 190
    packed-switch p0, :pswitch_data_0

    .line 204
    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    .line 207
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 198
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/millennialmedia/android/MMLog;->setLogLevel(I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static declared-synchronized setMMdid(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 719
    const-class v0, Lcom/millennialmedia/android/MMSDK;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/millennialmedia/android/MMSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit v0

    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static supportsFullScreenInline()Z
    .locals 2

    .prologue
    .line 1366
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackConversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "goalId"

    .prologue
    .line 1170
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V

    .line 1171
    return-void
.end method

.method public static trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .parameter "context"
    .parameter "goalId"
    .parameter "request"

    .prologue
    .line 1188
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V

    .line 1189
    return-void
.end method

.method public static trackEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, mmdid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://ads.mp.mydas.mobi/pixel?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mmdid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, trackEventUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/android/Utils$HttpUtils;->executeUrl(Ljava/lang/String;)V

    .line 1156
    .end local v0           #mmdid:Ljava/lang/String;
    .end local v1           #trackEventUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method
