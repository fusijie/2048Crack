.class Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/nextpeer/android/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030010

    iput v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->theme:I

    const-string v0, "session"

    invoke-static {p2, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Attempted to use a Session that was not open."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-direct {p0, p1, p3, p4}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030010

    iput v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->theme:I

    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p4}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/nextpeer/android/facebook/widget/WebDialog;
    .locals 6

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/widget/WebDialog;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->theme:I

    iget-object v5, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    return-object p0
.end method

.method public setTheme(I)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    iput p1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->theme:I

    return-object p0
.end method
