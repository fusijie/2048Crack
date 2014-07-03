.class final Lcom/nextpeer/android/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/ba$aa;
.implements Lcom/nextpeer/android/dz$aa;
.implements Lcom/nextpeer/android/eh$ab;
.implements Lcom/nextpeer/android/eo$aa;
.implements Lcom/nextpeer/android/ex$af;
.implements Lcom/nextpeer/android/fm$aa;
.implements Lcom/nextpeer/android/ga$aa;
.implements Lcom/nextpeer/android/gb$ab;
.implements Lcom/nextpeer/android/ge$ab;
.implements Lcom/nextpeer/android/gg$aa;
.implements Lcom/nextpeer/android/gm$aa;
.implements Lcom/nextpeer/android/gr$aa;
.implements Lcom/nextpeer/android/gu$aa;
.implements Lcom/nextpeer/android/gw$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/bd$aa;
    }
.end annotation


# static fields
.field private static synthetic f:[I


# instance fields
.field private a:Lcom/nextpeer/android/bd$aa;

.field private b:Landroid/support/v4/app/FragmentManager;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/nextpeer/android/hq;

.field private e:Lcom/nextpeer/android/hq;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/nextpeer/android/bd$aa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    iput-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    iput-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    iput-object p1, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    iput-object p2, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    return-void
.end method

.method private A()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->j()V

    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/bb;->c()Lcom/nextpeer/android/dm;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/nextpeer/android/cc;->c:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->c(Lcom/nextpeer/android/dm;)V

    goto :goto_0
.end method

.method private C()V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/cc;->h:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    return-void
.end method

.method private D()V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/cc;->j:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    return-void
.end method

.method private E()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/nextpeer/android/cc;->l:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    return-void
.end method

.method private F()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->D()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->j()V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method private static synthetic G()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/bd;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/cc;->values()[Lcom/nextpeer/android/cc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/cc;->k:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/cc;->h:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/cc;->l:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/cc;->i:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nextpeer/android/cc;->e:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nextpeer/android/cc;->d:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nextpeer/android/cc;->g:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/nextpeer/android/cc;->f:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/nextpeer/android/cc;->c:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/nextpeer/android/cc;->a:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/nextpeer/android/cc;->m:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/nextpeer/android/cc;->j:Lcom/nextpeer/android/cc;

    invoke-virtual {v1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/nextpeer/android/bd;->f:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method private a(IZ)V
    .locals 2

    invoke-static {p1}, Lcom/nextpeer/android/bd;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/nextpeer/android/bd;->b(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->b()V

    :cond_2
    const-string v0, "EXTRA_INFO_KEY_SHOW_MATCH_DETAILS"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->D()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->E()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/bd;)V
    .locals 3

    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_error:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_create_a_match_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_create_a_match_description:I

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/dz;->a(III)Lcom/nextpeer/android/dz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dz;->a(Lcom/nextpeer/android/dz$aa;)V

    iget-object v1, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    const-string v2, "NPUIAlertDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/dz;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/bd;Lcom/nextpeer/android/dm;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/dm;I)V

    return-void
.end method

.method private a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadRootFragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/bd;->G()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadRootFragmentType doesn\'t support fragment type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/cc;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/nextpeer/android/eo;

    invoke-direct {v0}, Lcom/nextpeer/android/eo;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/nextpeer/android/gr;

    invoke-direct {v0}, Lcom/nextpeer/android/gr;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/nextpeer/android/ge;

    invoke-direct {v0}, Lcom/nextpeer/android/ge;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/nextpeer/android/gb;

    invoke-direct {v0}, Lcom/nextpeer/android/gb;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/nextpeer/android/gm;

    invoke-direct {v0}, Lcom/nextpeer/android/gm;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/nextpeer/android/gg;

    invoke-direct {v0}, Lcom/nextpeer/android/gg;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/nextpeer/android/ex;

    invoke-direct {v0}, Lcom/nextpeer/android/ex;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/nextpeer/android/ga;

    invoke-direct {v0}, Lcom/nextpeer/android/ga;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/nextpeer/android/gw;

    invoke-direct {v0}, Lcom/nextpeer/android/gw;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/nextpeer/android/eh;

    invoke-direct {v0}, Lcom/nextpeer/android/eh;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/nextpeer/android/fm;

    invoke-direct {v0}, Lcom/nextpeer/android/fm;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/nextpeer/android/gu;

    invoke-direct {v0}, Lcom/nextpeer/android/gu;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/nextpeer/android/ba;->j()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/ba;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/nextpeer/android/R$anim;->np__slide_in_left:I

    sget v4, Lcom/nextpeer/android/R$anim;->np__slide_out_left:I

    sget v5, Lcom/nextpeer/android/R$anim;->np__slide_in_right:I

    sget v6, Lcom/nextpeer/android/R$anim;->np__slide_out_right:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    sget v3, Lcom/nextpeer/android/R$id;->np__main_fragment_container:I

    const-string v4, "NPRootFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lcom/nextpeer/android/dm;I)V
    .locals 2

    invoke-static {p2}, Lcom/nextpeer/android/bd;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->E()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/nextpeer/android/gw;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    :cond_1
    const-string v0, "EXTRA_INFO_KEY_MATCH_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->b(Ljava/lang/String;)V

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_FRIENDS"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lcom/nextpeer/android/bb;->a(Lcom/nextpeer/android/dm;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nextpeer/android/bb;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    sget-object v1, Lcom/nextpeer/android/cc;->e:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;Lcom/nextpeer/android/dm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;",
            "Lcom/nextpeer/android/dm;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_creating_match:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/nextpeer/android/ba;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Lcom/nextpeer/android/ba;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/nextpeer/android/be;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/be;-><init>(Lcom/nextpeer/android/bd;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v1, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v2, Lcom/nextpeer/android/bf;

    invoke-direct {v2, p0, p1, p2}, Lcom/nextpeer/android/bf;-><init>(Lcom/nextpeer/android/bd;Ljava/util/Collection;Lcom/nextpeer/android/dm;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/nextpeer/android/ho;->a(Ljava/util/Collection;Lcom/nextpeer/android/dm;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    return-void

    :cond_3
    const-string v0, "showLoading failed - Could not extract the activity from the current fragment, could not create the dialog"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v0, v0, Lcom/nextpeer/android/av$ab;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->j()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/nextpeer/android/bb;->b()V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/bd$aa;->onShouldDismiss(Z)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/bd;)Lcom/nextpeer/android/ba;
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lcom/nextpeer/android/bb;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/cc;->g:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/hk;->d()Lcom/nextpeer/android/hg;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/hg;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/nextpeer/android/dm;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v3, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/bd;->c(Lcom/nextpeer/android/dm;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "startTournamentByExtraInfo could not find the relevent data to load the selected tournament item. Dismiss UI"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/nextpeer/android/bd;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v3, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_FRIENDS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/dm;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "EXTRA_INFO_KEY_MATCH_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EXTRA_INFO_KEY_MATCH_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0, p1}, Lcom/nextpeer/android/bd;->a(Ljava/util/Collection;Lcom/nextpeer/android/dm;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "startTournamentByExtraInfo could not find the match id or friends list"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/nextpeer/android/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    return-void
.end method

.method private c(Lcom/nextpeer/android/dm;)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/nextpeer/android/gw;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    :cond_0
    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lcom/nextpeer/android/bb;->a(Lcom/nextpeer/android/dm;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/cc;->d:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    return-void
.end method

.method private static c(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hc;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/nextpeer/android/hl;->a(I)Lcom/nextpeer/android/dn;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/nextpeer/android/bd;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/bd;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/bd;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic g(Lcom/nextpeer/android/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->F()V

    return-void
.end method

.method private z()Lcom/nextpeer/android/ba;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    const-string v1, "NPRootFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nextpeer/android/ba;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/ba;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/cc;->j:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->d()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/bd;->a(IZ)V

    return-void
.end method

.method public final a(Lcom/nextpeer/android/dm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/bd;->b(Lcom/nextpeer/android/dm;)V

    return-void
.end method

.method public final a(Lcom/nextpeer/android/dn;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v1, p1, Lcom/nextpeer/android/dn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl;->c(Ljava/lang/String;)Lcom/nextpeer/android/dm;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find tournmanet with key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nextpeer/android/dn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "EXTRA_INFO_KEY_TOURNAMENT_TO_PLAY_AGAIN"

    invoke-static {v2, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v2, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_FRIENDS"

    invoke-static {v1, v2}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "EXTRA_INFO_KEY_MATCH_ID"

    iget v2, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->b()V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->D()V

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/hg;)V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lcom/nextpeer/android/bb;->a(Lcom/nextpeer/android/hg;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/cc;->m:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nextpeer/android/bb;->c()Lcom/nextpeer/android/dm;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->b(Ljava/lang/String;)V

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_FRIENDS"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "EXTRA_INFO_KEY_MATCH_FRIENDS"

    invoke-static {v0, p1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/nextpeer/android/cc;->c:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/bd;->a(Ljava/util/Collection;Lcom/nextpeer/android/dm;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/cc;->i:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->d()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/nextpeer/android/dn;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nextpeer/android/dn;->b()Lcom/nextpeer/android/dn$aa;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v2, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    :cond_2
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v1

    new-instance v2, Lcom/nextpeer/android/bg;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/bg;-><init>(Lcom/nextpeer/android/bd;I)V

    invoke-virtual {v1, p1, v2}, Lcom/nextpeer/android/ho;->b(Lcom/nextpeer/android/dn;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v2, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    :cond_4
    iget v0, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v1

    new-instance v2, Lcom/nextpeer/android/bh;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/bh;-><init>(Lcom/nextpeer/android/bd;I)V

    invoke-virtual {v1, p1, v2}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/dn;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->d()V

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v3, v4}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :cond_0
    if-eqz v0, :cond_4

    const-string v3, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/nextpeer/android/cc;->f:Lcom/nextpeer/android/cc;

    invoke-direct {p0, v0, v4}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/hk;->d()Lcom/nextpeer/android/hg;

    move-result-object v0

    sget-object v2, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/hg;)V

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nextpeer/android/bd;->b()V

    :cond_2
    return-void

    :cond_3
    const-string v3, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_FRIENDS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final c(Lcom/nextpeer/android/dn;)V
    .locals 2

    const-string v0, "EXTRA_INFO_KEY_MATCH_ID"

    iget v1, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->b(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v2, p0, Lcom/nextpeer/android/bd;->d:Lcom/nextpeer/android/hq;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v2, p0, Lcom/nextpeer/android/bd;->e:Lcom/nextpeer/android/hq;

    :cond_1
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->h()V

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/bd;->a:Lcom/nextpeer/android/bd$aa;

    invoke-interface {v0, v1}, Lcom/nextpeer/android/bd$aa;->onShouldDismiss(Z)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->c_()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/nextpeer/android/ba;->b_()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->B()V

    return-void
.end method

.method public final getSupportedDelegate(Lcom/nextpeer/android/cc;)Lcom/nextpeer/android/bc;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/bd;->G()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The given fragmentType has not any supported delegate - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/cc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->C()V

    return-void
.end method

.method public final i()V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/cc;->k:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->i()V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->D()V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TO_PLAY_AGAIN"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TO_PLAY_AGAIN"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->b(Lcom/nextpeer/android/dm;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "EXTRA_INFO_KEY_SHOW_MATCH_DETAILS"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EXTRA_INFO_KEY_SHOW_MATCH_DETAILS"

    invoke-static {v0}, Lcom/nextpeer/android/bb;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(IZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/cc;Landroid/os/Bundle;)V

    :goto_1
    invoke-static {}, Lcom/nextpeer/android/hk;->d()Lcom/nextpeer/android/hg;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hg;->c:Lcom/nextpeer/android/hg;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nextpeer/android/hg;->c:Lcom/nextpeer/android/hg;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/hg;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->B()V

    goto :goto_1
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/bb;->d()Lcom/nextpeer/android/dm;

    move-result-object v0

    const-string v1, "EXTRA_INFO_KEY_TOURNAMENT_TO_PLAY_AGAIN"

    invoke-static {v1, v0}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "EXTRA_INFO_KEY_TOURNAMENT_TYPE"

    const-string v1, "EXTRA_INFO_VALUE_TOURNAMENT_IS_WITH_RANDOM"

    invoke-static {v0, v1}, Lcom/nextpeer/android/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->b()V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->D()V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->C()V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/bd;->a(Z)V

    return-void
.end method

.method public final v()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->F()V

    return-void
.end method

.method public final w()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->z()Lcom/nextpeer/android/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/nextpeer/android/ex;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bd;->F()V

    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/bd;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/nextpeer/android/bd;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/bd;->A()V

    goto :goto_0
.end method
