.class public Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;
.source "InMobiAdapterServerParameters.java"


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$Parameter;
        name = "pubid"
    .end annotation
.end field

.field public isUDIDHashAllowed:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$Parameter;
        name = "isUDIDHashAllowed"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    .line 28
    const-string v0, "true"

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->isUDIDHashAllowed:Ljava/lang/String;

    .line 10
    return-void
.end method
