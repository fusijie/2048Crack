.class Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;
.super Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthDialogBuilder"
.end annotation


# static fields
.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private e2e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/nextpeer/android/facebook/widget/WebDialog;
    .locals 6

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e2e"

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/widget/WebDialog;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->getTheme()I

    move-result v4

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->getListener()Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v0
.end method

.method public setE2E(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    return-object p0
.end method
