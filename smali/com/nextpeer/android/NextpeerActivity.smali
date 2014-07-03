.class public final Lcom/nextpeer/android/NextpeerActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/nextpeer/android/ba$aa;
.implements Lcom/nextpeer/android/bd$aa;


# static fields
.field private static synthetic f:[I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/nextpeer/android/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/nextpeer/android/hg;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_BOOL_SHOW_USER_CUSTOMIZE_DIALOG"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "EXTRA_INT_USER_CUSTOMIZE_DIALOG_LOCATION"

    invoke-virtual {p1}, Lcom/nextpeer/android/hg;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/NextpeerActivity;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/bw;->values()[Lcom/nextpeer/android/bw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/bw;->d:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/bw;->b:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/bw;->c:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/bw;->e:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/bw;->f:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nextpeer/android/bw;->a:Lcom/nextpeer/android/bw;

    invoke-virtual {v1}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/nextpeer/android/NextpeerActivity;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_BOOL_SHOW_RESULTS"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_BOOL_SHOW_DISCONNECT"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_BOOL_SHOW_PUSH_MSG"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final addCustomView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->removeCustomViewIfAvailable()V

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__widget_dummy_action_bar:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonGone()V

    return-void
.end method

.method public final getSupportedDelegate(Lcom/nextpeer/android/cc;)Lcom/nextpeer/android/bc;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/bd;->getSupportedDelegate(Lcom/nextpeer/android/cc;)Lcom/nextpeer/android/bc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCustomViewAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final makeSettingButtonGone()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final makeSettingButtonVisible(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const-string v0, "NPA_NEXTPEER_BACK_TO_GAME"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->d()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v4, 0x400

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/nextpeer/android/R$style;->NP__Theme:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->setTheme(I)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->g()Lcom/nextpeer/android/NextpeerSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/nextpeer/android/NextpeerSettings;->shouldShowStatusBar:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/NextpeerActivity;->requestWindowFeature(I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/nextpeer/android/R$layout;->np__activity_main:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->setContentView(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__widget_dummy_action_bar_text_title:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->a:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$string;->np__application_name:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->setTitle(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__widget_dummy_action_bar_overflow_image_view:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->b:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__widget_dummy_action_bar_nextpeer_logo_image_view:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/nextpeer/android/NextpeerActivity$1;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/NextpeerActivity$1;-><init>(Lcom/nextpeer/android/NextpeerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nextpeer/android/bd;

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/nextpeer/android/bd;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/nextpeer/android/bd$aa;)V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v0, "EXTRA_BOOL_SHOW_PUSH_MSG"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->j()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v0, "type"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/bw;->a(I)Lcom/nextpeer/android/bw;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/bo;->a()[I

    move-result-object v5

    invoke-virtual {v0}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown push message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/nextpeer/android/bs;

    invoke-direct {v0, v4}, Lcom/nextpeer/android/bs;-><init>(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {v0}, Lcom/nextpeer/android/bm;->a()Lcom/nextpeer/android/bw;

    move-result-object v4

    invoke-static {}, Lcom/nextpeer/android/NextpeerActivity;->a()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    :cond_4
    move v0, v2

    :goto_2
    const-string v2, "EXTRA_BOOL_SHOW_RESULTS"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->c()V

    :goto_3
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->a()V

    :cond_5
    return-void

    :pswitch_1
    new-instance v0, Lcom/nextpeer/android/bt;

    invoke-direct {v0, v4}, Lcom/nextpeer/android/bt;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/nextpeer/android/br;

    invoke-direct {v0, v4}, Lcom/nextpeer/android/br;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/nextpeer/android/bu;

    invoke-direct {v0, v4}, Lcom/nextpeer/android/bu;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/nextpeer/android/bv;

    invoke-direct {v0, v4}, Lcom/nextpeer/android/bv;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_5
    check-cast v0, Lcom/nextpeer/android/bs;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    iget v0, v0, Lcom/nextpeer/android/bs;->a:I

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(I)V

    move v0, v1

    goto :goto_2

    :pswitch_6
    check-cast v0, Lcom/nextpeer/android/bt;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    iget v0, v0, Lcom/nextpeer/android/bt;->a:I

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(I)V

    move v0, v1

    goto :goto_2

    :pswitch_7
    check-cast v0, Lcom/nextpeer/android/br;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    iget v0, v0, Lcom/nextpeer/android/br;->a:I

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(I)V

    move v0, v1

    goto :goto_2

    :pswitch_8
    check-cast v0, Lcom/nextpeer/android/bu;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    iget v0, v0, Lcom/nextpeer/android/bu;->a:I

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(I)V

    move v0, v1

    goto :goto_2

    :pswitch_9
    check-cast v0, Lcom/nextpeer/android/bv;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    iget v0, v0, Lcom/nextpeer/android/bv;->a:I

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(I)V

    move v0, v1

    goto :goto_2

    :cond_6
    const-string v2, "EXTRA_BOOL_SHOW_DISCONNECT"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->b()V

    goto :goto_3

    :cond_7
    const-string v2, "EXTRA_BOOL_SHOW_USER_CUSTOMIZE_DIALOG"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "EXTRA_INT_USER_CUSTOMIZE_DIALOG_LOCATION"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "EXTRA_INT_USER_CUSTOMIZE_DIALOG_LOCATION"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/hg;->a(I)Lcom/nextpeer/android/hg;

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/hg;)V

    goto/16 :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v1, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onPause()V
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->e()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onShouldDismiss(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->f()V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->e()V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->finish()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->e:Lcom/nextpeer/android/bd;

    invoke-virtual {v0}, Lcom/nextpeer/android/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/NextpeerActivity;->onShouldDismiss(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeCustomViewIfAvailable()V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerActivity;->isCustomViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__widget_dummy_action_bar:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->d:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
