.class public Lcom/mdotm/android/utils/MdotMAdInfo;
.super Ljava/lang/Object;
.source "MdotMAdInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4
    .parameter "context"

    .prologue
    .line 17
    :try_start_0
    const-string v2, "this"

    const-string v3, "GPS is "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 v0, 0x0

    .line 29
    .local v0, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 51
    .end local v0           #adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 22
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "this"

    const-string v3, "GPS not found "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 24
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catch_1
    move-exception v1

    .line 34
    .local v1, e:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1           #e:Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v1

    .line 41
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v1

    .line 49
    .local v1, e:Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_0
.end method
