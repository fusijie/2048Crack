.class Lcom/nextpeer/android/dy;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nextpeer/android/dy;->c:I

    iput-object p2, p0, Lcom/nextpeer/android/dy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/dy;->a:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/nextpeer/android/dy;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dy;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dy;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dy;->d:Z

    return v0
.end method
