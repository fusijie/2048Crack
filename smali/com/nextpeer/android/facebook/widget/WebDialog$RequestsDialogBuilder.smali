.class public Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
.super Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestsDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPREQUESTS_DIALOG:Ljava/lang/String; = "apprequests"

.field private static final DATA_PARAM:Ljava/lang/String; = "data"

.field private static final MESSAGE_PARAM:Ljava/lang/String; = "message"

.field private static final TITLE_PARAM:Ljava/lang/String; = "title"

.field private static final TO_PARAM:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;)V
    .locals 2

    const-string v0, "apprequests"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/nextpeer/android/facebook/widget/WebDialog;
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->build()Lcom/nextpeer/android/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTheme(I)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->setTheme(I)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
