.class public Lcom/nextpeer/android/facebook/android/FbDialog;
.super Lcom/nextpeer/android/facebook/widget/WebDialog;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 6

    const v4, 0x1030010

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V

    invoke-direct {p0, p4}, Lcom/nextpeer/android/facebook/android/FbDialog;->setDialogListener(Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V

    invoke-direct {p0, p4}, Lcom/nextpeer/android/facebook/android/FbDialog;->setDialogListener(Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nextpeer/android/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, p3}, Lcom/nextpeer/android/facebook/android/FbDialog;->setDialogListener(Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/android/FbDialog;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/android/FbDialog;->callDialogListener(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void
.end method

.method private callDialogListener(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/nextpeer/android/facebook/FacebookDialogException;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/nextpeer/android/facebook/FacebookDialogException;

    new-instance v0, Lcom/nextpeer/android/facebook/android/DialogError;

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/FacebookDialogException;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/FacebookDialogException;->getFailingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onError(Lcom/nextpeer/android/facebook/android/DialogError;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nextpeer/android/facebook/android/FacebookError;

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/nextpeer/android/facebook/android/FacebookError;)V

    goto :goto_0
.end method

.method private setDialogListener(Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/FbDialog;->mListener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    new-instance v0, Lcom/nextpeer/android/facebook/android/FbDialog$1;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/android/FbDialog$1;-><init>(Lcom/nextpeer/android/facebook/android/FbDialog;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/android/FbDialog;->setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V

    return-void
.end method
