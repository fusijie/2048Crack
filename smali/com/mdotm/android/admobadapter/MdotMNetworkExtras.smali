.class public final Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;
.super Ljava/lang/Object;
.source "MdotMNetworkExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private enableCaching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->enableCaching:Z

    .line 10
    return-void
.end method


# virtual methods
.method public isEnableCaching()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->enableCaching:Z

    return v0
.end method

.method public setEnableCaching(Z)V
    .locals 0
    .parameter "enableCaching"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->enableCaching:Z

    .line 34
    return-void
.end method
