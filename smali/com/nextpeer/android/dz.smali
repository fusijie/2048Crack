.class public final Lcom/nextpeer/android/dz;
.super Lcom/nextpeer/android/em;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dz$aa;
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/dz$aa;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dz;)Lcom/nextpeer/android/dz$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dz;->b:Lcom/nextpeer/android/dz$aa;

    return-object v0
.end method

.method static a(III)Lcom/nextpeer/android/dz;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_title_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/nextpeer/android/dz;

    invoke-direct {v1}, Lcom/nextpeer/android/dz;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/dz;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static a(ILjava/lang/String;)Lcom/nextpeer/android/dz;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_title_text"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_description_res_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/nextpeer/android/dz;

    invoke-direct {v1}, Lcom/nextpeer/android/dz;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/dz;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/dz$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dz;->b:Lcom/nextpeer/android/dz$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/dz;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/nextpeer/android/dz;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nextpeer/android/dz$aa;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/dz$aa;

    iput-object v0, p0, Lcom/nextpeer/android/dz;->b:Lcom/nextpeer/android/dz$aa;

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/dz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/dz;->c:I

    const-string v1, "args_title_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/dz;->d:I

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/dz;->e:I

    :cond_1
    :goto_0
    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/dz;->g:I

    const-string v1, "args_title_icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/dz;->h:I

    return-void

    :cond_2
    const-string v1, "args_description_res_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "args_description_res_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/dz;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_confirm_alert:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_alert_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_alert_description:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/nextpeer/android/R$id;->np__dialog_alert_button_confirm:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget v4, p0, Lcom/nextpeer/android/dz;->c:I

    invoke-virtual {v0, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget v4, p0, Lcom/nextpeer/android/dz;->d:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nextpeer/android/dz;->d:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/nextpeer/android/dz;->e:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/nextpeer/android/dz;->e:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget v0, p0, Lcom/nextpeer/android/dz;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dz;->g:I

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    iget v0, p0, Lcom/nextpeer/android/dz;->h:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/nextpeer/android/dz;->h:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    new-instance v0, Lcom/nextpeer/android/ea;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ea;-><init>(Lcom/nextpeer/android/dz;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/dz;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/dz;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/dz;->b:Lcom/nextpeer/android/dz$aa;

    return-void
.end method
