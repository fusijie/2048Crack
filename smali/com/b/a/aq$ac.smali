.class final Lcom/b/a/aq$ac;
.super Landroid/graphics/drawable/BitmapDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/aq$ac$aa;
    }
.end annotation


# instance fields
.field a:Lcom/b/a/aq$ac$aa;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/b/a/aq$ac$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/aq$ac$aa;-><init>(B)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/aq$ac;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/b/a/aq$ac$aa;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/b/a/aq$ac$aa;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    invoke-static {}, Lcom/b/a/aq;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/b/a/aq;->b()Lcom/b/a/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/al;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/b/a/aq;->c()Lcom/b/a/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/b/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    iget v1, v0, Lcom/b/a/aq$ac$aa;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/b/a/aq$ac$aa;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)Lcom/b/a/aq$ac;
    .locals 4

    new-instance v0, Lcom/b/a/aq$ac;

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/b/a/aq$ac;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/b/a/aq$ac;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/b/a/aq$ac$aa;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BOOM! Headshot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/a/aq$ac$aa;->b:Z

    invoke-static {}, Lcom/b/a/aq;->c()Lcom/b/a/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/ag;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/b/a/aq;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/aq$ac;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final finalize()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    iget v1, v0, Lcom/b/a/aq$ac$aa;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/b/a/aq$ac$aa;->a:I

    iget-object v0, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    iget v0, v0, Lcom/b/a/aq$ac$aa;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/aq$ac;->a:Lcom/b/a/aq$ac$aa;

    iget-boolean v0, v0, Lcom/b/a/aq$ac$aa;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/b/a/aq;->b()Lcom/b/a/al;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/b/a/aq$ac;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/b/a/aq;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/aq$ac;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/b/a/aq;->c()Lcom/b/a/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/ag;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Zombie GC event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/aq$ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
