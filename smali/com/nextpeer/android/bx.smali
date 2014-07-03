.class public final Lcom/nextpeer/android/bx;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nextpeer/android/bx;

.field private static synthetic l:[I

.field private static synthetic m:[I

.field private static synthetic n:[I


# instance fields
.field private b:Z

.field private final c:Landroid/view/WindowManager;

.field private d:Lcom/nextpeer/android/NPRanksView;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/b/a/al;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private k:Lcom/nextpeer/android/dx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/bx;->a:Lcom/nextpeer/android/bx;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/bx;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->h:Landroid/os/Handler;

    new-instance v0, Lcom/nextpeer/android/by;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/by;-><init>(Lcom/nextpeer/android/bx;)V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/nextpeer/android/bz;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/bz;-><init>(Lcom/nextpeer/android/bx;)V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/nextpeer/android/ca;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ca;-><init>(Lcom/nextpeer/android/bx;)V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->k:Lcom/nextpeer/android/dx;

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/bx;->k:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nextpeer/android/bx;->c:Landroid/view/WindowManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/bx;->b:Z

    iput-object p1, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    new-instance v0, Lcom/b/a/al;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/b/a/al;-><init>(I)V

    iput-object v0, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static a()Lcom/nextpeer/android/bx;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/bx;->a:Lcom/nextpeer/android/bx;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/bx;Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iget-object v0, v1, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerImageUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DisplayCircle"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    invoke-virtual {v0, v4}, Lcom/b/a/al;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v1, v1, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerImageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/aq;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/nextpeer/android/bx;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    invoke-virtual {v1, v4, v0}, Lcom/b/a/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    const-string v1, "http://nextpeer.com/defaultimage1983.png"

    invoke-virtual {v0, v1}, Lcom/b/a/al;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bx;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    const-string v5, "http://nextpeer.com/defaultimage1983.png"

    invoke-virtual {v1, v5, v0}, Lcom/b/a/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nextpeer/android/bx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/bx;->a:Lcom/nextpeer/android/bx;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/bx;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/bx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nextpeer/android/bx;->a:Lcom/nextpeer/android/bx;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/bx;)V
    .locals 10

    const/16 v4, 0x31

    const/4 v2, 0x0

    const/4 v1, -0x2

    const/high16 v9, 0x3f80

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    invoke-virtual {v0}, Lcom/nextpeer/android/NPRanksView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/bx;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/nextpeer/android/R$dimen;->np__ranks_display_view_x_layout_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v5, Lcom/nextpeer/android/R$dimen;->np__ranks_display_view_y_layout_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/nextpeer/android/bx;->d()[I

    move-result-object v5

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nextpeer/android/Nextpeer;->g()Lcom/nextpeer/android/NextpeerSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationPosition:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v6}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v6, v2

    move v7, v2

    move v8, v4

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v1, v8, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_1
    and-int/lit8 v1, v8, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_2

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/bx;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :pswitch_0
    move v6, v0

    move v7, v2

    move v8, v4

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x51

    move v6, v0

    move v7, v2

    move v8, v3

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x33

    move v6, v0

    move v7, v3

    move v8, v2

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x53

    move v6, v0

    move v7, v3

    move v8, v2

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x35

    move v6, v0

    move v7, v3

    move v8, v2

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x55

    move v6, v0

    move v7, v3

    move v8, v2

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    move v6, v2

    move v7, v3

    move v8, v0

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x3

    move v6, v2

    move v7, v3

    move v8, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/nextpeer/android/bx;Lcom/nextpeer/android/NPRanksView;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/bx;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    invoke-virtual {v0}, Lcom/nextpeer/android/NPRanksView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/bx;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/bx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/bx;->g:Lcom/b/a/al;

    invoke-virtual {v2, v0}, Lcom/b/a/al;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/bx;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bx;->c()V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/bx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/bx;->b:Z

    return v0
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/bx;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->values()[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/nextpeer/android/bx;->l:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    return-object v0
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/bx;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->values()[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->LIST:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->SOLO:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/nextpeer/android/bx;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;
    .locals 4

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->g()Lcom/nextpeer/android/NextpeerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationStyle:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    invoke-static {}, Lcom/nextpeer/android/bx;->e()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown notification style, could not create view. Notification Style = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->g()Lcom/nextpeer/android/NextpeerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationAlignment:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    invoke-static {}, Lcom/nextpeer/android/bx;->f()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown notification alignment, could not create list rank view. Notification alignment = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v0, Lcom/nextpeer/android/NPRanksListHorizontalView;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nextpeer/android/NPRanksListHorizontalView;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/nextpeer/android/NPRanksListVerticalView;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nextpeer/android/NPRanksListVerticalView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/nextpeer/android/NPRanksSoloView;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nextpeer/android/NPRanksSoloView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic f()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/bx;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->values()[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->HORIZONTAL:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->VERTICAL:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/nextpeer/android/bx;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic g(Lcom/nextpeer/android/bx;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nextpeer/android/bx;->b:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/bx;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/bx;->d:Lcom/nextpeer/android/NPRanksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/bx;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/bx;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
