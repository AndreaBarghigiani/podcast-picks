// images

require.context(`../../images`, true)

// stylesheets

import "../../stylesheets/application.scss"

// external

import "@oddcamp/cocoon-vanilla-js"
import "whatwg-fetch"
import "scopedQuerySelectorShim"
import "custom-event-polyfill"
import "classlist-polyfill"
import "nodelist-foreach-polyfill"
import "element-closest"
import "element-remove"

// internal

import "../application/base/rails"
import "../application/base/form"
import "../application/atoms/overflow-mask"
import "../application/components/modal"
import "../application/components/default-modal"
import "../application/pages/index-page"
