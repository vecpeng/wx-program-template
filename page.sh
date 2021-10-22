# 运行./page.sh $(page名)
# 可以自动生成pages文件,并在app.config.ts中添加配置信息
# 例如运行 ./page.sh index, 将会生成如图所示目录结构
# src/pages/index
# ├── index.config.ts
# ├── index.scss
# └── index.vue
mkdir src/pages/$1
echo "<template>
  <view class="activity">
    <text>{{ msg }}</text>
  </view>
</template>

<script>
import { ref } from 'vue'
import './index.scss'

export default {
  setup () {
    const msg = ref('Hello world')
    return {
      msg
    }
  }
}
</script>" > src/pages/$1/$1.vue
touch src/pages/$1/$1.scss
touch src/pages/$1/$1.config.ts
gsed -i "    2 a 'pages/$1/$1'," src/app.config.ts
