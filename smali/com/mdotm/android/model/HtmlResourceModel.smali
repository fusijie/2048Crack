.class public Lcom/mdotm/android/model/HtmlResourceModel;
.super Ljava/lang/Object;
.source "HtmlResourceModel.java"


# instance fields
.field private absoluteCachedPath:Ljava/lang/String;

.field private action:I

.field private cachedFileName:Ljava/lang/String;

.field private cachedLocation:Ljava/lang/String;

.field private isVideo:Z

.field private originallink:Ljava/lang/String;

.field private resolvedLink:Ljava/lang/String;

.field private resourceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsoluteCachedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->absoluteCachedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->action:I

    return v0
.end method

.method public getCachedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->cachedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->cachedLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginallink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->originallink:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->resolvedLink:Ljava/lang/String;

    return-object v0
.end method

.method public getresourceType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->resourceType:I

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mdotm/android/model/HtmlResourceModel;->isVideo:Z

    return v0
.end method

.method public setAbsoluteCachedPath(Ljava/lang/String;)V
    .locals 0
    .parameter "absoluteCachedPath"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->absoluteCachedPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 22
    iput p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->action:I

    .line 23
    return-void
.end method

.method public setCachedFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "cachedFileName"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->cachedFileName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCachedLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "cachedLocation"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->cachedLocation:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOriginallink(Ljava/lang/String;)V
    .locals 0
    .parameter "originallink"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->originallink:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setResolvedLink(Ljava/lang/String;)V
    .locals 0
    .parameter "resolvedLink"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->resolvedLink:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .parameter "isVideo"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->isVideo:Z

    .line 83
    return-void
.end method

.method public setresourceType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 30
    iput p1, p0, Lcom/mdotm/android/model/HtmlResourceModel;->resourceType:I

    .line 31
    return-void
.end method
