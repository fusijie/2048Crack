.class public Lcom/mdotm/android/admobadapter/MdotMServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;
.source "MdotMServerParameters.java"


# instance fields
.field public appKey:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$Parameter;
        name = "appKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/mediation/MediationServerParameters$MappingException;
        }
    .end annotation

    .prologue
    .line 23
    .local p1, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/ads/mediation/MediationServerParameters;->load(Ljava/util/Map;)V

    .line 25
    return-void
.end method
