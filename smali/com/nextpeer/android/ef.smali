.class public final Lcom/nextpeer/android/ef;
.super Lcom/nextpeer/android/em;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ef$aa;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/nextpeer/android/hq;

.field private k:Lcom/nextpeer/android/ef$aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->j:Lcom/nextpeer/android/hq;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ef;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ef;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->j:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/ef;)V
    .locals 1

    const-string v0, "NPA_CHANGE_NAME_DIALOG_NAME_CHANGED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/ef$aa;->a_()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/ef;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/ef;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/nextpeer/android/ef;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nextpeer/android/ef;)Lcom/nextpeer/android/ef$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/ef$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nextpeer/android/ef;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/ef;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/ef;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nextpeer/android/ef;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/nextpeer/android/ef;->d:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_changename_button_positive:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nextpeer/android/ef;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nextpeer/android/ef;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/nextpeer/android/ef;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/ef;->a()V

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v1

    new-instance v2, Lcom/nextpeer/android/eg;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/eg;-><init>(Lcom/nextpeer/android/ef;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/nextpeer/android/ho;->a(Ljava/lang/String;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->j:Lcom/nextpeer/android/hq;

    goto :goto_1

    :cond_4
    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_changename_button_negative:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/ef;->a()V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->j:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/ef;->j:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    :cond_5
    const-string v0, "NPA_CHANGE_NAME_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/ef$aa;->l()V

    :cond_6
    invoke-virtual {p0}, Lcom/nextpeer/android/ef;->dismiss()V

    goto :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ef;->setCancelable(Z)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nextpeer/android/ef;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__dialog_changename_error_empty_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/ef;->f:Ljava/lang/String;

    sget v1, Lcom/nextpeer/android/R$string;->np__dialog_changename_error_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->g:Ljava/lang/String;

    const-string v0, "NPA_CHANGE_NAME_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_changename:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changename_title_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nextpeer/android/ef;->b:Landroid/widget/ProgressBar;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changename_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changename_button_negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ef;->d:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changename_button_positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ef;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/ef;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ef;->k:Lcom/nextpeer/android/ef$aa;

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ef;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
