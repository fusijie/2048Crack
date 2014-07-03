.class public Lcom/mdotm/android/vast/VastAd;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55cc945ec9fb0de2L


# instance fields
.field protected adSystem:Ljava/lang/String;

.field protected adTitle:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected error:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected impression:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected servey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field protected vastAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    .line 6
    return-void
.end method


# virtual methods
.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpression()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mdotm/android/vast/VastAd;->status:I

    return v0
.end method

.method public getVastAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdSystem(Ljava/lang/String;)V
    .locals 0
    .parameter "adSystem"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->adSystem:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "adTitle"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setError(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, error:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setImpression(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, impression:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public setServey(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, servey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 85
    iput p1, p0, Lcom/mdotm/android/vast/VastAd;->status:I

    .line 86
    return-void
.end method

.method public setVastAds(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    .line 78
    return-void
.end method
